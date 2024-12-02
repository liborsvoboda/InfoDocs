﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Vanara.Interop.DesktopWindowManager
{
	/// <summary>GlassExtenderProvider extends a <see cref="Form"/> and provides glass margins.</summary>
	[ProvideProperty("GlassEnabled", typeof(Form))]
	[ProvideProperty("GlassMarginMovesForm", typeof(Form))]
	[ProvideProperty("GlassMargins", typeof(Form))]
	[ToolboxItem(true), ToolboxBitmap(typeof(AeroWizard.WizardControl), "GlassExtenderProvider.bmp")]
	[Description("Extender for a Form that adds Aero glass properties.")]
	public class GlassExtenderProvider : Component, IExtenderProvider
	{
		private readonly Dictionary<Control, GlassFormProperties> formProps = new();

		/// <summary>Gets whether glass should be extended into the client space.</summary>
		/// <param name="form">The <see cref="Form"/> to be extended.</param>
		/// <returns><c>true</c> if the glass is enabled; otherwise <c>false</c>.</returns>
		[DisplayName(@"GlassEnabled")]
		[DefaultValue(true)]
		[Category("Behavior")]
		[Description("Indicates whether extending glass into the client area is enabled.")]
		public bool GetGlassEnabled(Form form)
		{
			if (formProps.TryGetValue(form, out GlassFormProperties prop))
			{
				return prop.GlassEnabled;
			}

			return true;
		}

		/// <summary>Gets a value indicating whether clicking and dragging within the top margin will move the form.</summary>
		/// <param name="form">The <see cref="Form"/> to be extended.</param>
		/// <returns><c>true</c> if clicking and dragging on the top margin moves the form; otherwise, <c>false</c>.</returns>
		[DisplayName(@"GlassMarginMovesForm")]
		[DefaultValue(true)]
		[Category("Behavior")]
		[Description("Specifies if clicking and dragging within the margin will move the form. ")]
		public bool GetGlassMarginMovesForm(Form form)
		{
			if (formProps.TryGetValue(form, out GlassFormProperties prop))
			{
				return prop.GlassMarginMovesForm;
			}

			return true;
		}

		/// <summary>Gets the glass margins.</summary>
		/// <param name="form">The <see cref="Form"/> to be extended.</param>
		/// <returns>The margins where the glass will be extended.</returns>
		[DefaultValue(typeof(Padding), "0")]
		[DisplayName(@"GlassMargins")]
		[Description("Specifies the interior glass margin of the form. Set to -1 for full window glass.")]
		[Category("Layout")]
		public Padding GetGlassMargins(Form form)
		{
			if (formProps.TryGetValue(form, out GlassFormProperties prop))
			{
				return prop.GlassMargins;
			}

			return Padding.Empty;
		}

		/// <summary>Set whether the glass should be extended into the client space.</summary>
		/// <param name="form">The <see cref="Form"/> to be extended.</param>
		/// <param name="value">The enabled value.</param>
		public void SetGlassEnabled(Form form, bool value)
		{
			GlassFormProperties prop = GetFormProperties(form);
			prop.GlassEnabled = value;
			GlassifyForm(form);
		}

		/// <summary>Sets a value indicating whether clicking and dragging within the margin will move the form.</summary>
		/// <param name="form">The <see cref="Form"/> to be extended.</param>
		/// <param name="value"><c>true</c> if clicking and dragging within the margin moves the form; otherwise, <c>false</c>.</param>
		public void SetGlassMarginMovesForm(Form form, bool value)
		{
			GlassFormProperties prop = GetFormProperties(form);
			prop.GlassMarginMovesForm = value;
		}

		/// <summary>Sets the glass margins.</summary>
		/// <param name="form">The <see cref="Form"/> to be extended.</param>
		/// <param name="value">The margins where the glass will be extended.</param>
		public void SetGlassMargins(Form form, Padding value)
		{
			if (form is null)
			{
				throw new ArgumentNullException(nameof(form));
			}

			GlassFormProperties prop = GetFormProperties(form);
			if (value == Padding.Empty)
			{
				prop.GlassMargins = Padding.Empty;
				UnhookForm(form);
			}
			else
			{
				prop.GlassMargins = value;
				form.Paint += form_Paint;
				if (!form.IsDesignMode())
				{
					form.MouseDown += form_MouseDown;
					form.MouseMove += form_MouseMove;
					form.MouseUp += form_MouseUp;
					form.Resize += form_Resize;
					form.Shown += form_Shown;
				}
			}
			form.Invalidate();
		}

		/// <summary>Specifies whether this object can provide its extender properties to the specified object.</summary>
		/// <param name="form">The <see cref="T:System.Object"/> to receive the extender properties.</param>
		/// <returns>true if this object can provide extender properties to the specified object; otherwise, false.</returns>
		bool IExtenderProvider.CanExtend(object form) => (form != this) && (form is Form);

		/// <summary>
		/// Releases the unmanaged resources used by the <see cref="T:System.ComponentModel.Component"/> and optionally releases the managed resources.
		/// </summary>
		/// <param name="disposing">true to release both managed and unmanaged resources; false to release only unmanaged resources.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				foreach (Control control in formProps.Keys)
				{
					Form form = control as Form;
					if (form is not null && !form.IsDisposed)
					{
						UnhookForm(form);
					}
				}
			}
			base.Dispose(disposing);
		}

		private static Rectangle GetNonGlassArea(Form form, GlassFormProperties prop)
		{
			if (prop is null)
			{
				return form.ClientRectangle;
			}

			return new Rectangle(form.ClientRectangle.Left + prop.GlassMargins.Left, form.ClientRectangle.Top + prop.GlassMargins.Top,
				form.ClientRectangle.Width - prop.GlassMargins.Horizontal, form.ClientRectangle.Height - prop.GlassMargins.Vertical);
		}

		private void form_MouseDown(object sender, MouseEventArgs e)
		{
			if (e.Button != MouseButtons.Left)
			{
				return;
			}

			GlassFormProperties prop = GetFormProperties(sender as Form);
			if (!prop.GlassMarginMovesForm)
			{
				return;
			}

			prop.FormMoveTracking = true;
			prop.FormMoveLastMousePos = ((Control)sender).PointToScreen(e.Location);
		}

		private void form_MouseMove(object sender, MouseEventArgs e)
		{
			if (sender is not Form form)
			{
				return;
			}

			GlassFormProperties prop = GetFormProperties(form);
			if (!prop.FormMoveTracking || GetNonGlassArea(form, prop).Contains(e.Location))
			{
				return;
			}

			Point screen = form.PointToScreen(e.Location);
			Point diff = new(screen.X - prop.FormMoveLastMousePos.X, screen.Y - prop.FormMoveLastMousePos.Y);
			Point loc = form.Location;
			loc.Offset(diff);
			form.Location = loc;
			prop.FormMoveLastMousePos = screen;
		}

		private void form_MouseUp(object sender, MouseEventArgs e)
		{
			if (e.Button != MouseButtons.Left)
			{
				return;
			}

			GlassFormProperties prop = GetFormProperties(sender as Form);
			prop.FormMoveTracking = false;
		}

		private void form_Paint(object sender, PaintEventArgs e) => GlassifyForm(sender as Form, e.Graphics);

		private void form_Resize(object sender, EventArgs e)
		{
			Form form = sender as Form;
			if (form is not null && (DesktopWindowManager.IsCompositionEnabled() && GetGlassEnabled(form)) || form.IsDesignMode())
			{
				InvalidateNonGlassClientArea(form);
			}
		}

		private void form_Shown(object sender, EventArgs e) => GlassifyForm(sender as Form);

		private GlassFormProperties GetFormProperties(Form form)
		{
			if (!formProps.TryGetValue(form, out GlassFormProperties prop))
			{
				formProps.Add(form, prop = new GlassFormProperties());
			}

			return prop;
		}

		private void GlassifyForm(Form form, Graphics g = null)
		{
			if (!(DesktopWindowManager.IsCompositionEnabled() && GetGlassEnabled(form)) && !form.IsDesignMode())
			{
				return;
			}

			g ??= form.CreateGraphics();

			if (!formProps.TryGetValue(form, out GlassFormProperties prop))
			{
				return;
			}

			// Paint the glass effect.
			if (prop.GlassMargins == new Padding(-1))
			{
				g.FillRectangle(Brushes.Black, form.ClientRectangle);
			}
			else
			{
				using Region r = new(form.ClientRectangle);
				r.Exclude(GetNonGlassArea(form, prop));
				g.FillRegion(Brushes.Black, r);
			}

			if (!form.IsDesignMode())
			{
				form.ExtendFrameIntoClientArea(prop.GlassMargins);
			}
		}

		private void InvalidateNonGlassClientArea(Form form)
		{
			Padding glassMargin = GetGlassMargins(form);
			if (glassMargin == Padding.Empty)
			{
				return;
			}

			Rectangle rect = new(glassMargin.Left, glassMargin.Top, form.ClientRectangle.Width - glassMargin.Right,
				form.ClientRectangle.Height - glassMargin.Bottom);
			form.Invalidate(rect, false);
		}

		private void UnhookForm(Form form)
		{
			form.MouseDown -= form_MouseDown;
			form.MouseMove -= form_MouseMove;
			form.MouseUp -= form_MouseUp;
			form.Shown -= form_Shown;
			form.Resize -= form_Resize;
			form.Paint -= form_Paint;
		}

		/// <summary>Properties for each form that is extended.</summary>
		private class GlassFormProperties
		{
			public Point FormMoveLastMousePos = Point.Empty;
			public bool FormMoveTracking;
			public bool GlassEnabled = true;
			public bool GlassMarginMovesForm = true;
			public Padding GlassMargins = Padding.Empty;
		}
	}
}