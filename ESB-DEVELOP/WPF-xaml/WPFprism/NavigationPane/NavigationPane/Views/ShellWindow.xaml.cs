﻿using MahApps.Metro.Controls;

using NavigationPane.Constants;

using Prism.Regions;

namespace NavigationPane.Views
{
    public partial class ShellWindow : MetroWindow
    {
        public ShellWindow(IRegionManager regionManager)
        {
            InitializeComponent();
            RegionManager.SetRegionName(hamburgerMenuContentControl, Regions.Main);
            RegionManager.SetRegionManager(hamburgerMenuContentControl, regionManager);
        }
    }
}
