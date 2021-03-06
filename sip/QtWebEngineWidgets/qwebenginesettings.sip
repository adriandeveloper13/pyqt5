// qwebenginesettings.sip generated by MetaSIP
//
// This file is part of the QtWebEngineWidgets Python extension module.
//
// Copyright (c) 2018 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of PyQt5.
// 
// This file may be used under the terms of the GNU General Public License
// version 3.0 as published by the Free Software Foundation and appearing in
// the file LICENSE included in the packaging of this file.  Please review the
// following information to ensure the GNU General Public License version 3.0
// requirements will be met: http://www.gnu.org/copyleft/gpl.html.
// 
// If you do not wish to use this file under the terms of the GPL version 3.0
// then you may purchase a commercial license.  For more information contact
// info@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


%If (Qt_5_4_0 -)

class QWebEngineSettings
{
%TypeHeaderCode
#include <qwebenginesettings.h>
%End

public:
    enum FontFamily
    {
        StandardFont,
        FixedFont,
        SerifFont,
        SansSerifFont,
        CursiveFont,
        FantasyFont,
%If (Qt_5_7_0 -)
        PictographFont,
%End
    };

    enum WebAttribute
    {
        AutoLoadImages,
        JavascriptEnabled,
        JavascriptCanOpenWindows,
        JavascriptCanAccessClipboard,
        LinksIncludedInFocusChain,
        LocalStorageEnabled,
        LocalContentCanAccessRemoteUrls,
        XSSAuditingEnabled,
        SpatialNavigationEnabled,
        LocalContentCanAccessFileUrls,
        HyperlinkAuditingEnabled,
        ScrollAnimatorEnabled,
        ErrorPageEnabled,
%If (Qt_5_6_0 -)
        PluginsEnabled,
%End
%If (Qt_5_6_0 -)
        FullScreenSupportEnabled,
%End
%If (Qt_5_7_0 -)
        ScreenCaptureEnabled,
%End
%If (Qt_5_7_0 -)
        WebGLEnabled,
%End
%If (Qt_5_7_0 -)
        Accelerated2dCanvasEnabled,
%End
%If (Qt_5_7_0 -)
        AutoLoadIconsForPage,
%End
%If (Qt_5_7_0 -)
        TouchIconsEnabled,
%End
%If (Qt_5_8_0 -)
        FocusOnNavigationEnabled,
%End
%If (Qt_5_8_0 -)
        PrintElementBackgrounds,
%End
%If (Qt_5_8_0 -)
        AllowRunningInsecureContent,
%End
%If (Qt_5_9_0 -)
        AllowGeolocationOnInsecureOrigins,
%End
%If (Qt_5_10_0 -)
        AllowWindowActivationFromJavaScript,
%End
%If (Qt_5_10_0 -)
        ShowScrollBars,
%End
    };

    enum FontSize
    {
        MinimumFontSize,
        MinimumLogicalFontSize,
        DefaultFontSize,
        DefaultFixedFontSize,
    };

%If (Qt_5_5_0 -)
    static QWebEngineSettings *defaultSettings();
%End
    static QWebEngineSettings *globalSettings();
    void setFontFamily(QWebEngineSettings::FontFamily which, const QString &family);
    QString fontFamily(QWebEngineSettings::FontFamily which) const;
    void resetFontFamily(QWebEngineSettings::FontFamily which);
    void setFontSize(QWebEngineSettings::FontSize type, int size);
    int fontSize(QWebEngineSettings::FontSize type) const;
    void resetFontSize(QWebEngineSettings::FontSize type);
    void setAttribute(QWebEngineSettings::WebAttribute attr, bool on);
    bool testAttribute(QWebEngineSettings::WebAttribute attr) const;
    void resetAttribute(QWebEngineSettings::WebAttribute attr);
    void setDefaultTextEncoding(const QString &encoding);
    QString defaultTextEncoding() const;

private:
    QWebEngineSettings(const QWebEngineSettings &);
    ~QWebEngineSettings();
};

%End
