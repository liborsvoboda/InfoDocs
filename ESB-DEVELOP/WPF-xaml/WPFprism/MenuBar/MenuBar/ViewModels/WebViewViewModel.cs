﻿using System.Windows;
using System.Windows.Input;

using MahApps.Metro.Controls;

using MenuBar.Contracts.Services;

using Microsoft.Toolkit.Win32.UI.Controls.Interop.WinRT;
using Microsoft.Toolkit.Wpf.UI.Controls;

using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;

namespace MenuBar.ViewModels
{
    public class WebViewViewModel : BindableBase, INavigationAware
    {
        // TODO WTS: Set the URI of the page to show by default
        private const string DefaultUrl = "https://docs.microsoft.com/windows/apps/";
        private readonly IRightPaneService _rightPaneService;

        private readonly ISystemService _systemService;

        private string _source;
        private bool _isLoading = true;
        private bool _isShowingFailedMessage = false;
        private Visibility _isLoadingVisibility = Visibility.Visible;
        private Visibility _failedMesageVisibility = Visibility.Collapsed;
        private ICommand _refreshCommand;
        private DelegateCommand _browserBackCommand;
        private DelegateCommand _browserForwardCommand;
        private ICommand _openInBrowserCommand;
        private WebView _webView;

        public string Source
        {
            get { return _source; }
            set { SetProperty(ref _source, value); }
        }

        public bool IsLoading
        {
            get => _isLoading;
            set
            {
                SetProperty(ref _isLoading, value);
                IsLoadingVisibility = value ? Visibility.Visible : Visibility.Collapsed;
            }
        }

        public bool IsShowingFailedMessage
        {
            get => _isShowingFailedMessage;
            set
            {
                SetProperty(ref _isShowingFailedMessage, value);
                FailedMesageVisibility = value ? Visibility.Visible : Visibility.Collapsed;
            }
        }

        public Visibility IsLoadingVisibility
        {
            get { return _isLoadingVisibility; }
            set { SetProperty(ref _isLoadingVisibility, value); }
        }

        public Visibility FailedMesageVisibility
        {
            get { return _failedMesageVisibility; }
            set { SetProperty(ref _failedMesageVisibility, value); }
        }

        public ICommand RefreshCommand => _refreshCommand ?? (_refreshCommand = new DelegateCommand(OnRefresh));

        public DelegateCommand BrowserBackCommand => _browserBackCommand ?? (_browserBackCommand = new DelegateCommand(() => _webView?.GoBack(), () => _webView?.CanGoBack ?? false));

        public DelegateCommand BrowserForwardCommand => _browserForwardCommand ?? (_browserForwardCommand = new DelegateCommand(() => _webView?.GoForward(), () => _webView?.CanGoForward ?? false));

        public ICommand OpenInBrowserCommand => _openInBrowserCommand ?? (_openInBrowserCommand = new DelegateCommand(OnOpenInBrowser));

        public WebViewViewModel(ISystemService systemService, IRightPaneService rightPaneService)
        {
            _systemService = systemService;
            Source = DefaultUrl;
            BrowserBackCommand.ObservesProperty(() => Source);
            BrowserForwardCommand.ObservesProperty(() => Source);
            _rightPaneService = rightPaneService;
        }

        public void Initialize(WebView webView)
        {
            _webView = webView;
        }

        public void OnNavigationCompleted(WebViewControlNavigationCompletedEventArgs e)
        {
            IsLoading = false;
            if (e != null && !e.IsSuccess)
            {
                // Use `args.WebErrorStatus` to vary the displayed message based on the error reason
                IsShowingFailedMessage = true;
            }
        }

        private void OnRefresh()
        {
            IsShowingFailedMessage = false;
            IsLoading = true;
            _webView?.Refresh();
        }

        private void OnOpenInBrowser()
            => _systemService.OpenInWebBrowser(Source);

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            _rightPaneService.PaneOpened += OnRightPaneOpened;
            _rightPaneService.PaneClosed += OnRightPaneClosed;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {
            _rightPaneService.PaneOpened -= OnRightPaneOpened;
            _rightPaneService.PaneClosed -= OnRightPaneClosed;
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;
        }

        private void OnRightPaneOpened(object sender, System.EventArgs e)
        {
            // WebView control is always rendered on top
            // We need to adapt the WebView to be able to show the right pane
            if (sender is SplitView splitView)
            {
                _webView.Margin = new Thickness(0, 0, splitView.OpenPaneLength, 0);
            }
        }

        private void OnRightPaneClosed(object sender, System.EventArgs e)
         => _webView.Margin = new Thickness(0);
    }
}
