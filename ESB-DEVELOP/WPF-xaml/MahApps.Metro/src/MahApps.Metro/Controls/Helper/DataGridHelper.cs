﻿// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using MahApps.Metro.ValueBoxes;

namespace MahApps.Metro.Controls
{
    [StyleTypedProperty(Property = "AutoGeneratedCheckBoxColumnStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedCheckBoxColumnEditingStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedTextColumnStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedTextColumnEditingStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedComboBoxColumnStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedComboBoxColumnEditingStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedNumericUpDownColumnStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedNumericUpDownColumnEditingStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedHyperlinkColumnStyle", StyleTargetType = typeof(FrameworkElement))]
    [StyleTypedProperty(Property = "AutoGeneratedHyperlinkColumnEditingStyle", StyleTargetType = typeof(FrameworkElement))]
    public static class DataGridHelper
    {
        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedCheckBoxColumnStyle property.
        ///
        /// If a style is set, the DataGridCheckBoxColumn of the DataGrid will use this style for normal cells.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedCheckBoxColumnStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedCheckBoxColumnStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedCheckBoxColumnStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridCheckBoxColumn of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedCheckBoxColumnStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedCheckBoxColumnStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedCheckBoxColumnStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedCheckBoxColumnStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedCheckBoxColumnStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridCheckBoxColumn of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedCheckBoxColumnStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedCheckBoxColumnStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedCheckBoxColumnStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedCheckBoxColumnStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedCheckBoxColumnEditingStyle property.
        ///
        /// If a style is set, the DataGridCheckBoxColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedCheckBoxColumnEditingStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedCheckBoxColumnEditingStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedCheckBoxColumnEditingStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridCheckBoxColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedCheckBoxColumnEditingStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedCheckBoxColumnEditingStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedCheckBoxColumnEditingStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedCheckBoxColumnEditingStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedCheckBoxColumnEditingStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridCheckBoxColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedCheckBoxColumnEditingStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedCheckBoxColumnEditingStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedCheckBoxColumnEditingStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedCheckBoxColumnEditingStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedTextColumnStyle property.
        ///
        /// If a style is set, the DataGridTextColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedTextColumnStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedTextColumnStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedTextColumnStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridTextColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedTextColumnStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedTextColumnStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedTextColumnStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedTextColumnStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedTextColumnStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridTextColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedTextColumnStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedTextColumnStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedTextColumnStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedTextColumnStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedTextColumnEditingStyle property.
        ///
        /// If a style is set, the DataGridTextColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedTextColumnEditingStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedTextColumnEditingStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedTextColumnEditingStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridTextColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedTextColumnEditingStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedTextColumnEditingStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedTextColumnEditingStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedTextColumnEditingStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedTextColumnEditingStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridTextColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedTextColumnEditingStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedTextColumnEditingStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedTextColumnEditingStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedTextColumnEditingStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedComboBoxColumnStyle property.
        ///
        /// If a style is set, the DataGridComboBoxColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedComboBoxColumnStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedComboBoxColumnStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedComboBoxColumnStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridComboBoxColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedComboBoxColumnStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedComboBoxColumnStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedComboBoxColumnStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedComboBoxColumnStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedComboBoxColumnStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridComboBoxColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedComboBoxColumnStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedComboBoxColumnStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedComboBoxColumnStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedComboBoxColumnStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedComboBoxColumnEditingStyle property.
        ///
        /// If a style is set, the DataGridComboBoxColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedComboBoxColumnEditingStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedComboBoxColumnEditingStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedComboBoxColumnEditingStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridComboBoxColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedComboBoxColumnEditingStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedComboBoxColumnEditingStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedComboBoxColumnEditingStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedComboBoxColumnEditingStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedComboBoxColumnEditingStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridComboBoxColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedComboBoxColumnEditingStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedComboBoxColumnEditingStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedComboBoxColumnEditingStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedComboBoxColumnEditingStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedNumericUpDownColumnStyle property.
        ///
        /// If a style is set, the DataGridNumericUpDownColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedNumericUpDownColumnStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedNumericUpDownColumnStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedNumericUpDownColumnStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridNumericUpDownColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedNumericUpDownColumnStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedNumericUpDownColumnStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedNumericUpDownColumnStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedNumericUpDownColumnStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedNumericUpDownColumnStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridNumericUpDownColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedNumericUpDownColumnStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedNumericUpDownColumnStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedNumericUpDownColumnStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedNumericUpDownColumnStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedNumericUpDownColumnEditingStyle property.
        ///
        /// If a style is set, the DataGridNumericUpDownColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedNumericUpDownColumnEditingStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedNumericUpDownColumnEditingStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedNumericUpDownColumnEditingStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridNumericUpDownColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedNumericUpDownColumnEditingStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedNumericUpDownColumnEditingStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedNumericUpDownColumnEditingStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedNumericUpDownColumnEditingStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedNumericUpDownColumnEditingStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridNumericUpDownColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedNumericUpDownColumnEditingStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedNumericUpDownColumnEditingStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedNumericUpDownColumnEditingStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedNumericUpDownColumnEditingStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedHyperlinkColumnStyle property.
        ///
        /// If a style is set, the DataGridHyperlinkColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedHyperlinkColumnStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedHyperlinkColumnStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedHyperlinkColumnStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridHyperlinkColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedHyperlinkColumnStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedHyperlinkColumnStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedHyperlinkColumnStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedHyperlinkColumnStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedHyperlinkColumnStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridHyperlinkColumn columns of the DataGrid will use this style for normal cells.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedHyperlinkColumnStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedHyperlinkColumnStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedHyperlinkColumnStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedHyperlinkColumnStyleProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' AutoGeneratedHyperlinkColumnEditingStyle property.
        ///
        /// If a style is set, the DataGridHyperlinkColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        public static readonly DependencyProperty AutoGeneratedHyperlinkColumnEditingStyleProperty
            = DependencyProperty.RegisterAttached(
                "AutoGeneratedHyperlinkColumnEditingStyle",
                typeof(Style),
                typeof(DataGridHelper),
                new PropertyMetadata(default(Style)));

        /// <summary>
        /// Helper for getting <see cref="AutoGeneratedHyperlinkColumnEditingStyleProperty"/> from <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridHyperlinkColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="AutoGeneratedHyperlinkColumnEditingStyleProperty"/> from.</param>
        /// <returns>AutoGeneratedHyperlinkColumnEditingStyle property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Style? GetAutoGeneratedHyperlinkColumnEditingStyle(UIElement element)
        {
            return (Style?)element.GetValue(AutoGeneratedHyperlinkColumnEditingStyleProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="AutoGeneratedHyperlinkColumnEditingStyleProperty"/> on <paramref name="element"/>.
        ///
        /// If a style is set, the DataGridHyperlinkColumn of the DataGrid will use this style for cells in edit mode.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="AutoGeneratedHyperlinkColumnEditingStyleProperty"/> on.</param>
        /// <param name="value">AutoGeneratedHyperlinkColumnEditingStyle property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetAutoGeneratedHyperlinkColumnEditingStyle(UIElement element, Style? value)
        {
            element.SetValue(AutoGeneratedHyperlinkColumnEditingStyleProperty, value);
        }

        public static readonly DependencyProperty CellPaddingProperty
            = DependencyProperty.RegisterAttached(
                "CellPadding",
                typeof(Thickness),
                typeof(DataGridHelper),
                new FrameworkPropertyMetadata(new Thickness(0), FrameworkPropertyMetadataOptions.Inherits));

        /// <summary>
        /// Gets the padding inside the cell.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        [AttachedPropertyBrowsableForType(typeof(DataGridRow))]
        public static Thickness GetCellPadding(DependencyObject element)
        {
            return (Thickness)element.GetValue(CellPaddingProperty);
        }

        /// <summary>
        /// Sets the padding inside the cell.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        [AttachedPropertyBrowsableForType(typeof(DataGridRow))]
        public static void SetCellPadding(DependencyObject element, Thickness value)
        {
            element.SetValue(CellPaddingProperty, value);
        }

        public static readonly DependencyProperty ColumnHeaderPaddingProperty
            = DependencyProperty.RegisterAttached(
                "ColumnHeaderPadding",
                typeof(Thickness),
                typeof(DataGridHelper),
                new FrameworkPropertyMetadata(new Thickness(10, 0, 4, 0), FrameworkPropertyMetadataOptions.Inherits));

        /// <summary>
        /// Gets the padding inside the column.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static Thickness GetColumnHeaderPadding(DependencyObject element)
        {
            return (Thickness)element.GetValue(ColumnHeaderPaddingProperty);
        }

        /// <summary>
        /// Sets the padding inside the column.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetColumnHeaderPadding(DependencyObject element, Thickness value)
        {
            element.SetValue(ColumnHeaderPaddingProperty, value);
        }

        public static readonly DependencyProperty EnableCellEditAssistProperty
            = DependencyProperty.RegisterAttached(
                "EnableCellEditAssist",
                typeof(bool),
                typeof(DataGridHelper),
                new PropertyMetadata(BooleanBoxes.FalseBox, EnableCellEditAssistPropertyChangedCallback));

        /// <summary>
        /// Gets a value which indicates the preview cell editing is enabled or not.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static bool GetEnableCellEditAssist(DependencyObject element)
        {
            return (bool)element.GetValue(EnableCellEditAssistProperty);
        }

        /// <summary>
        /// Sets a value which indicates the preview cell editing is enabled or not.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetEnableCellEditAssist(DependencyObject element, bool value)
        {
            element.SetValue(EnableCellEditAssistProperty, BooleanBoxes.Box(value));
        }

        private static void EnableCellEditAssistPropertyChangedCallback(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is DataGrid dataGrid && e.OldValue != e.NewValue && e.NewValue is bool isEnabled)
            {
                dataGrid.RemoveHandler(UIElement.MouseLeftButtonDownEvent, (RoutedEventHandler)DataGridOnMouseLeftButtonDown);
                dataGrid.PreviewKeyDown -= EditOnSpaceBarPress;

                if (isEnabled)
                {
                    // Register for bubbling events from cells, even when the cell handles them (thus the 'true' parameter)
                    dataGrid.AddHandler(UIElement.MouseLeftButtonDownEvent, (RoutedEventHandler)DataGridOnMouseLeftButtonDown, true);
                    dataGrid.PreviewKeyDown += EditOnSpaceBarPress;
                }
            }
        }

        // This relay is only needed because the UIElement.AddHandler() has strict requirements for the signature of the passed Delegate
        private static void DataGridOnMouseLeftButtonDown(object sender, RoutedEventArgs e) => AllowDirectEditWithoutFocus(sender, (MouseButtonEventArgs)e);

        /// <summary>
        /// Allows editing of components inside of a <see cref="DataGrid"/> cell with a single left click.
        /// </summary>
        private static void AllowDirectEditWithoutFocus(object sender, MouseButtonEventArgs mouseArgs)
        {
            var originalSource = (DependencyObject)mouseArgs.OriginalSource;
            var dataGridCell = originalSource
                               .GetVisualAncestry()
                               .OfType<DataGridCell>()
                               .FirstOrDefault();

            // Readonly has to be handled as the pass-through ignores the
            // cell and interacts directly with the content
            if (dataGridCell?.IsReadOnly ?? true)
            {
                return;
            }

            if (dataGridCell.Content is UIElement element)
            {
                var dataGrid = (DataGrid)sender;

                // If it is a DataGridTemplateColumn we want the
                // click to be handled naturally by the control
                if (dataGridCell.Column.GetType() == typeof(DataGridTemplateColumn))
                {
                    return;
                }

                // If the cell is already being edited, we let the cell itself handle the mouse event
                if (dataGridCell.IsEditing)
                {
                    return;
                }

                // Don't handle events from nested data grids
                var parentDataGrid = dataGridCell
                                     .GetVisualAncestry()
                                     .OfType<DataGrid>()
                                     .FirstOrDefault();
                if (parentDataGrid != dataGrid)
                {
                    return;
                }

                dataGrid.CurrentCell = new DataGridCellInfo(dataGridCell);
                dataGrid.BeginEdit();

                // Now use the content from the editable template/style
                switch (dataGridCell.Content)
                {
                    case TextBoxBase textBox:
                    {
                        if (TextBoxHelper.GetSelectAllOnFocus(textBox) == false)
                        {
                            // Send a 'left-click' routed event to the TextBox to place the I-beam at the position of the mouse cursor
                            var mouseDownEvent = new MouseButtonEventArgs(mouseArgs.MouseDevice, mouseArgs.Timestamp, mouseArgs.ChangedButton)
                                                 {
                                                     RoutedEvent = Mouse.MouseDownEvent,
                                                     Source = mouseArgs.Source
                                                 };
                            textBox.RaiseEvent(mouseDownEvent);
                        }

                        break;
                    }

                    case ToggleButton toggleButton:
                    {
                        // Check if the cursor actually hit the checkbox and not just the cell
                        var mousePosition = mouseArgs.GetPosition(element);
                        var elementHitBox = new Rect(element.RenderSize);
                        if (elementHitBox.Contains(mousePosition))
                        {
                            // Send a 'left click' routed command to the toggleButton to toggle the state
                            var newMouseEvent = new MouseButtonEventArgs(mouseArgs.MouseDevice, mouseArgs.Timestamp, mouseArgs.ChangedButton)
                                                {
                                                    RoutedEvent = Mouse.MouseDownEvent,
                                                    Source = dataGrid
                                                };

                            toggleButton.RaiseEvent(newMouseEvent);
                        }

                        break;
                    }

                    // Open the dropdown explicitly. Left clicking is not viable, as it would edit the text and not open the dropdown
                    case ComboBox comboBox:
                    {
                        comboBox.IsDropDownOpen = true;

                        break;
                    }
                }
            }
        }

        private static void EditOnSpaceBarPress(object sender, KeyEventArgs e)
        {
            if (sender is DataGrid dataGrid)
            {
                if (e is { Key: Key.Space, OriginalSource: DataGridCell { IsReadOnly: false, Column: DataGridComboBoxColumn } })
                {
                    dataGrid.BeginEdit();
                    e.Handled = true;
                }
            }
        }

        public static readonly DependencyProperty SelectionUnitProperty
            = DependencyProperty.RegisterAttached(
                "SelectionUnit",
                typeof(DataGridSelectionUnit),
                typeof(DataGridHelper),
                new FrameworkPropertyMetadata(DataGridSelectionUnit.FullRow));

        /// <summary>
        /// Gets the value to define the selection behavior.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGridRow))]
        [AttachedPropertyBrowsableForType(typeof(DataGridCell))]
        public static DataGridSelectionUnit GetSelectionUnit(UIElement element)
        {
            return (DataGridSelectionUnit)element.GetValue(SelectionUnitProperty);
        }

        /// <summary>
        /// Sets the value to define the selection behavior.
        /// </summary>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGridRow))]
        [AttachedPropertyBrowsableForType(typeof(DataGridCell))]
        public static void SetSelectionUnit(UIElement element, DataGridSelectionUnit value)
        {
            element.SetValue(SelectionUnitProperty, value);
        }

        /// <summary>
        /// The DependencyProperty for the <see cref="DataGrid"/>' ColumnStylesHelper property.
        ///
        /// If the helper is set, the columns of the DataGrid will use the styles for the columns from the <see cref="DataGridHelper"/>' attached properties.
        /// </summary>
        public static readonly DependencyProperty ColumnStylesHelperProperty
            = DependencyProperty.RegisterAttached(
                "ColumnStylesHelper",
                typeof(IDataGridColumnStylesHelper),
                typeof(DataGridHelper),
                new PropertyMetadata(OnAutoGenerateColumnStylesHelperChanged));

        private static void OnAutoGenerateColumnStylesHelperChanged(DependencyObject dependencyObject, DependencyPropertyChangedEventArgs e)
        {
            if (e.OldValue is IDataGridColumnStylesHelper oldHelper)
            {
                oldHelper.Detach();
            }

            if (e.NewValue is IDataGridColumnStylesHelper newHelper && dependencyObject is DataGrid dataGrid)
            {
                newHelper.Attach(dataGrid);
            }
        }

        /// <summary>
        /// Helper for getting <see cref="ColumnStylesHelperProperty"/> from <paramref name="element"/>.
        ///
        /// If the helper is set, the columns of the DataGrid will use the styles for the columns from the <see cref="DataGridHelper"/>' attached properties.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to read <see cref="ColumnStylesHelperProperty"/> from.</param>
        /// <returns>ColumnStylesHelper property value.</returns>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static IDataGridColumnStylesHelper? GetColumnStylesHelper(UIElement element)
        {
            return (IDataGridColumnStylesHelper?)element.GetValue(ColumnStylesHelperProperty);
        }

        /// <summary>
        /// Helper for setting <see cref="ColumnStylesHelperProperty"/> from <paramref name="element"/>.
        ///
        /// If the helper is set, the columns of the DataGrid will use the styles for the columns from the <see cref="DataGridHelper"/>' attached properties.
        /// </summary>
        /// <param name="element"><see cref="UIElement"/> to set <see cref="ColumnStylesHelperProperty"/> on.</param>
        /// <param name="value">ColumnStylesHelper property value.</param>
        [Category(AppName.MahApps)]
        [AttachedPropertyBrowsableForType(typeof(DataGrid))]
        public static void SetColumnStylesHelper(UIElement element, IDataGridColumnStylesHelper? value)
        {
            element.SetValue(ColumnStylesHelperProperty, value);
        }
    }
}