/// The data visualized as scatter point, lines or marker symbols on a Mapbox GL geographic map is
/// provided by longitude/latitude pairs in `lon` and `lat`.
/// 
/// - SeeAlso:
///   Documentation for 
///   [Python](https://plot.ly/python/reference/#scattermapbox), 
///   [JavaScript](https://plot.ly/javascript/reference/#scattermapbox) or 
///   [R](https://plot.ly/r/reference/#scattermapbox)
public struct ScatterMapbox<CoordinateData>: Trace where CoordinateData: Plotable {
    public let type: String = "scattermapbox"

    public let animatable: Bool = false

    /// Determines whether or not this trace is visible.
    /// 
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Shared.Visible?

    /// Determines whether or not an item corresponding to this trace is shown in the legend.
    public var showLegend: Bool?

    /// Sets the legend group for this trace.
    /// 
    /// Traces part of the same legend group hide/show at the same time when toggling legend items.
    public var legendGroup: String?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the trace name.
    /// 
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during
    /// animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum.
    /// 
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [String]?

    /// Assigns extra data each datum.
    /// 
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [String]?

    /// Assigns extra meta information associated with this trace that can be used in various text
    /// attributes.
    /// 
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Data<Anything>?

    /// Array containing integer indices of selected points.
    /// 
    /// Has an effect only for traces that support selections. Note that an empty array means an empty
    /// selection where the `unselected` are turned on for all points, whereas, any other non-array
    /// values means no selection all where the `selected` and `unselected` styles have no effect.
    public var selectedPoints: Anything?

    public var hoverLabel: Shared.HoverLabel?

    public var stream: Shared.Stream?

    public var transforms: [Shared.Transform]?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords`
    /// traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`.
    /// 
    /// Defaults to `layout.uirevision`. Note that other user-driven trace attribute changes are
    /// controlled by `layout` attributes: `trace.visible` is controlled by `layout.legend.uirevision`,
    /// `selectedpoints` is controlled by `layout.selectionrevision`, and `colorbar.(x|y)` (accessible
    /// with `config: {editable: true}`) is controlled by `layout.editrevision`. Trace changes are
    /// tracked by `uid`, which only falls back on trace index if no `uid` is provided. So if your app
    /// can add/remove traces before the end of the `data` array, such that the same trace has a
    /// different index, you can still preserve user-driven changes if you give each trace a `uid` that
    /// stays with it as it moves.
    public var uiRevision: Anything?

    /// Sets the longitude coordinates (in degrees East).
    public var longitude: CoordinateData?

    /// Sets the latitude coordinates (in degrees North).
    public var latitude: CoordinateData?

    /// Determines the drawing mode for this scatter trace.
    /// 
    /// If the provided `mode` includes *text* then the `text` elements appear at the coordinates.
    /// Otherwise, the `text` elements appear on hover.
    public var mode: Shared.Mode?

    /// Sets text elements associated with each (lon,lat) pair If a single string, the same string
    /// appears over all the data points.
    /// 
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// If trace `hoverinfo` contains a *text* flag and *hovertext* is not set, these elements will be
    /// seen in the hover labels.
    public var text: Data<String>?

    /// Template string used for rendering the information text that appear on points.
    /// 
    /// Note that this will override `textinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. Every attributes that can be specified per-point (the ones that are
    /// `arrayOk: true`) are available. variables `lat`, `lon` and `text`.
    public var textTemplate: Data<String>?

    /// Sets hover text elements associated with each (lon,lat) pair If a single string, the same string
    /// appears over all the data points.
    /// 
    /// If an array of string, the items are mapped in order to the this trace's (lon,lat) coordinates.
    /// To be seen, trace `hoverinfo` must contain a *text* flag.
    public var hoverText: Data<String>?

    public var line: Shared.Line?

    /// Determines whether or not gaps (i.e.
    /// 
    /// {nan} or missing values) in the provided data arrays are connected.
    public var connectGaps: Bool?

    public struct SymbolicMarker: Encodable {
        /// Sets the marker symbol.
        /// 
        /// Full list: https://www.mapbox.com/maki-icons/ Note that the array `marker.color` and
        /// `marker.size` are only available for *circle* symbols.
        public var symbol: Data<String>?
    
        /// Sets the marker opacity.
        public var opacity: Data<Double>?
    
        /// Sets the marker size (in px).
        public var size: Data<Double>?
    
        /// Has an effect only if `marker.size` is set to a numerical array.
        /// 
        /// Sets the scale factor used to determine the rendered size of marker points. Use with `sizemin`
        /// and `sizemode`.
        public var sizeReference: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array.
        /// 
        /// Sets the minimum size (in px) of the rendered marker points.
        public var sizeMin: Double?
    
        /// Has an effect only if `marker.size` is set to a numerical array.
        /// 
        /// Sets the rule for which the data in `size` is converted to pixels.
        public var sizeMode: Shared.SizeMode?
    
        /// Sets themarkercolor.
        /// 
        /// It accepts either a specific color or an array of numbers that are mapped to the colorscale
        /// relative to the max and min values of the array or relative to `marker.cmin` and `marker.cmax`
        /// if set.
        public var color: Coloring?
    
        /// Determines whether or not the color domain is computed with respect to the input data (here in
        /// `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax` Has an effect only if in
        /// `marker.color`is set to a numerical array.
        /// 
        /// Defaults to `false` when `marker.cmin` and `marker.cmax` are set by the user.
        public var cAuto: Bool?
    
        /// Sets the lower bound of the color domain.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmax` must be set as well.
        public var cMin: Double?
    
        /// Sets the upper bound of the color domain.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color` and if set, `marker.cmin` must be set as well.
        public var cMax: Double?
    
        /// Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax` to be
        /// equidistant to this point.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array. Value should have the same
        /// units as in `marker.color`. Has no effect when `marker.cauto` is `false`.
        public var cMiddle: Double?
    
        /// Sets the colorscale.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array. The colorscale must be an
        /// array containing arrays mapping a normalized value to an rgb, rgba, hex, hsl, hsv, or named
        /// color string. At minimum, a mapping for the lowest (0) and highest (1) values are required. For
        /// example, `[[0, 'rgb(0,0,255)'], [1, 'rgb(255,0,0)']]`. To control the bounds of the colorscale
        /// in color space, use`marker.cmin` and `marker.cmax`. Alternatively, `colorscale` may be a palette
        /// name string of the following list:
        /// Greys,YlGnBu,Greens,YlOrRd,Bluered,RdBu,Reds,Blues,Picnic,Rainbow,Portland,Jet,Hot,Blackbody,Earth,Electric,Viridis,Cividis.
        public var colorScale: ColorScale?
    
        /// Determines whether the colorscale is a default palette (`autocolorscale: true`) or the palette
        /// determined by `marker.colorscale`.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array. In case `colorscale` is
        /// unspecified or `autocolorscale` is true, the default palette will be chosen according to whether
        /// numbers in the `color` array are all positive, all negative or mixed.
        public var autoColorScale: Bool?
    
        /// Reverses the color mapping if true.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array. If true, `marker.cmin` will
        /// correspond to the last color in the array and `marker.cmax` will correspond to the first color.
        public var reverseScale: Bool?
    
        /// Determines whether or not a colorbar is displayed for this trace.
        /// 
        /// Has an effect only if in `marker.color`is set to a numerical array.
        public var showScale: Bool?
    
        public var colorBar: Shared.ColorBar?
    
        /// Sets a reference to a shared color axis.
        /// 
        /// References to these shared color axes are *coloraxis*, *coloraxis2*, *coloraxis3*, etc. Settings
        /// for these shared color axes are set in the layout, under `layout.coloraxis`,
        /// `layout.coloraxis2`, etc. Note that multiple color scales can be linked to the same color axis.
        public var colorAxis: SubPlotID?
    
        /// Decoding and encoding keys compatible with Plotly schema.
        enum CodingKeys: String, CodingKey {
            case symbol
            case opacity
            case size
            case sizeReference = "sizeref"
            case sizeMin = "sizemin"
            case sizeMode = "sizemode"
            case color
            case cAuto = "cauto"
            case cMin = "cmin"
            case cMax = "cmax"
            case cMiddle = "cmid"
            case colorScale = "colorscale"
            case autoColorScale = "autocolorscale"
            case reverseScale = "reversescale"
            case showScale = "showscale"
            case colorBar = "colorbar"
            case colorAxis = "coloraxis"
        }
        
        /// Creates `SymbolicMarker` object with specified properties.
        /// 
        /// - Parameters:
        ///   - symbol: Sets the marker symbol.
        ///   - opacity: Sets the marker opacity.
        ///   - size: Sets the marker size (in px).
        ///   - sizeReference: Has an effect only if `marker.size` is set to a numerical array.
        ///   - sizeMin: Has an effect only if `marker.size` is set to a numerical array.
        ///   - sizeMode: Has an effect only if `marker.size` is set to a numerical array.
        ///   - color: Sets themarkercolor.
        ///   - cAuto: Determines whether or not the color domain is computed with respect to the input data
        ///   (here in `marker.color`) or the bounds set in `marker.cmin` and `marker.cmax` Has an effect only
        ///   if in `marker.color`is set to a numerical array.
        ///   - cMin: Sets the lower bound of the color domain.
        ///   - cMax: Sets the upper bound of the color domain.
        ///   - cMiddle: Sets the mid-point of the color domain by scaling `marker.cmin` and/or `marker.cmax`
        ///   to be equidistant to this point.
        ///   - colorScale: Sets the colorscale.
        ///   - autoColorScale: Determines whether the colorscale is a default palette (`autocolorscale:
        ///   true`) or the palette determined by `marker.colorscale`.
        ///   - reverseScale: Reverses the color mapping if true.
        ///   - showScale: Determines whether or not a colorbar is displayed for this trace.
        ///   - colorBar:
        ///   - colorAxis: Sets a reference to a shared color axis.
        public init(symbol: Data<String>? = nil, opacity: Data<Double>? = nil, size: Data<Double>? =
                nil, sizeReference: Double? = nil, sizeMin: Double? = nil, sizeMode: Shared.SizeMode? = nil,
                color: Coloring? = nil, cAuto: Bool? = nil, cMin: Double? = nil, cMax: Double? = nil, cMiddle:
                Double? = nil, colorScale: ColorScale? = nil, autoColorScale: Bool? = nil, reverseScale: Bool? =
                nil, showScale: Bool? = nil, colorBar: Shared.ColorBar? = nil, colorAxis: SubPlotID? = nil) {
            self.symbol = symbol
            self.opacity = opacity
            self.size = size
            self.sizeReference = sizeReference
            self.sizeMin = sizeMin
            self.sizeMode = sizeMode
            self.color = color
            self.cAuto = cAuto
            self.cMin = cMin
            self.cMax = cMax
            self.cMiddle = cMiddle
            self.colorScale = colorScale
            self.autoColorScale = autoColorScale
            self.reverseScale = reverseScale
            self.showScale = showScale
            self.colorBar = colorBar
            self.colorAxis = colorAxis
        }
        
    }
    public var marker: SymbolicMarker?

    /// Sets the area to fill with a solid color.
    /// 
    /// Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each
    /// segment of the trace if it has gaps) into a closed shape.
    public enum Fill: String, Encodable {
        case none
        case toSelf = "toself"
    }
    /// Sets the area to fill with a solid color.
    /// 
    /// Use with `fillcolor` if not *none*. *toself* connects the endpoints of the trace (or each
    /// segment of the trace if it has gaps) into a closed shape.
    public var fill: Fill?

    /// Sets the fill color.
    /// 
    /// Defaults to a half-transparent variant of the line color, marker color, or marker line color,
    /// whichever is available.
    public var fillColor: Color?

    /// Sets the icon text font (color=mapbox.layer.paint.text-color,
    /// size=mapbox.layer.layout.text-size).
    /// 
    /// Has an effect only when `type` is set to *symbol*.
    public var textFont: Shared.Font?

    /// Sets the positions of the `text` elements with respects to the (x,y) coordinates.
    public var textPosition: Shared.TextPosition?

    /// Determines if this scattermapbox trace's layers are to be inserted before the layer with the
    /// specified ID.
    /// 
    /// By default, scattermapbox layers are inserted above all the base layers. To place the
    /// scattermapbox layers above every other layer, set `below` to *''*.
    public var below: String?

    public struct Selected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of selected points.
            public var opacity: Double?
        
            /// Sets the marker color of selected points.
            public var color: Color?
        
            /// Sets the marker size of selected points.
            public var size: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of selected points.
            ///   - color: Sets the marker color of selected points.
            ///   - size: Sets the marker size of selected points.
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Selected` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var selected: Selected?

    public struct Unselected: Encodable {
        public struct Marker: Encodable {
            /// Sets the marker opacity of unselected points, applied only when a selection exists.
            public var opacity: Double?
        
            /// Sets the marker color of unselected points, applied only when a selection exists.
            public var color: Color?
        
            /// Sets the marker size of unselected points, applied only when a selection exists.
            public var size: Double?
        
            /// Creates `Marker` object with specified properties.
            /// 
            /// - Parameters:
            ///   - opacity: Sets the marker opacity of unselected points, applied only when a selection exists.
            ///   - color: Sets the marker color of unselected points, applied only when a selection exists.
            ///   - size: Sets the marker size of unselected points, applied only when a selection exists.
            public init(opacity: Double? = nil, color: Color? = nil, size: Double? = nil) {
                self.opacity = opacity
                self.color = color
                self.size = size
            }
            
        }
        public var marker: Marker?
    
        /// Creates `Unselected` object with specified properties.
        public init(marker: Marker? = nil) {
            self.marker = marker
        }
        
    }
    public var unselected: Unselected?

    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public struct HoverInfo: OptionSet, Encodable {
        public let rawValue: Int
    
        public static var longitude: HoverInfo { HoverInfo(rawValue: 1 << 0) }
        public static var latitude: HoverInfo { HoverInfo(rawValue: 1 << 1) }
        public static var text: HoverInfo { HoverInfo(rawValue: 1 << 2) }
        public static var name: HoverInfo { HoverInfo(rawValue: 1 << 3) }
        public static var all: HoverInfo { HoverInfo(rawValue: 1 << 4) }
        public static var none: HoverInfo { HoverInfo(rawValue: 1 << 5) }
        public static var skip: HoverInfo { HoverInfo(rawValue: 1 << 6) }
    
        public init(rawValue: Int) { self.rawValue = rawValue }
    
        public func encode(to encoder: Encoder) throws {
            var options = [String]()
            if (self.rawValue & 1 << 0) != 0 { options += ["lon"] }
            if (self.rawValue & 1 << 1) != 0 { options += ["lat"] }
            if (self.rawValue & 1 << 2) != 0 { options += ["text"] }
            if (self.rawValue & 1 << 3) != 0 { options += ["name"] }
            if (self.rawValue & 1 << 4) != 0 { options += ["all"] }
            if (self.rawValue & 1 << 5) != 0 { options += ["none"] }
            if (self.rawValue & 1 << 6) != 0 { options += ["skip"] }
            var container = encoder.singleValueContainer()
            try container.encode(options.joined(separator: "+"))
        }
    }
    /// Determines which trace information appear on hover.
    /// 
    /// If `none` or `skip` are set, no information is displayed upon hovering. But, if `none` is set,
    /// click and hover events are still fired.
    public var hoverInfo: HoverInfo?

    /// Template string used for rendering the information that appear on hover box.
    /// 
    /// Note that this will override `hoverinfo`. Variables are inserted using %{variable}, for example
    /// "y: %{y}". Numbers are formatted using d3-format's syntax %{variable:d3-format}, for example
    /// "Price: %{y:$.2f}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format for details on
    /// the formatting syntax. Dates are formatted using d3-time-format's syntax
    /// %{variable|d3-time-format}, for example "Day: %{2019-01-01|%A}".
    /// https://github.com/d3/d3-3.x-api-reference/blob/master/Time-Formatting.md#format for details on
    /// the date formatting syntax. The variables available in `hovertemplate` are the ones emitted as
    /// event data described at this link https://plot.ly/javascript/plotlyjs-events/#event-data.
    /// Additionally, every attributes that can be specified per-point (the ones that are `arrayOk:
    /// true`) are available. Anything contained in tag `<extra>` is displayed in the secondary box, for
    /// example "<extra>{fullData.name}</extra>". To hide the secondary box completely, use an empty tag
    /// `<extra></extra>`.
    public var hoverTemplate: Data<String>?

    /// Sets a reference between this trace's data coordinates and a mapbox subplot.
    /// 
    /// If *mapbox* (the default value), the data refer to `layout.mapbox`. If *mapbox2*, the data refer
    /// to `layout.mapbox2`, and so on.
    public var subPlot: SubPlotID?

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case type
        case animatable
        case visible
        case showLegend = "showlegend"
        case legendGroup = "legendgroup"
        case opacity
        case name
        case uid
        case ids
        case customData = "customdata"
        case meta
        case selectedPoints = "selectedpoints"
        case hoverLabel = "hoverlabel"
        case stream
        case transforms
        case uiRevision = "uirevision"
        case longitude = "lon"
        case latitude = "lat"
        case mode
        case text
        case textTemplate = "texttemplate"
        case hoverText = "hovertext"
        case line
        case connectGaps = "connectgaps"
        case marker
        case fill
        case fillColor = "fillcolor"
        case textFont = "textfont"
        case textPosition = "textposition"
        case below
        case selected
        case unselected
        case hoverInfo = "hoverinfo"
        case hoverTemplate = "hovertemplate"
        case subPlot = "subplot"
    }
    
    /// Creates `ScatterMapbox` object from the most frequently used properties.
    /// 
    /// - Parameters:
    ///   - name: Sets the trace name.
    ///   - longitude: Sets the longitude coordinates (in degrees East).
    ///   - latitude: Sets the latitude coordinates (in degrees North).
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - text: Sets text elements associated with each (lon,lat) pair If a single string, the same
    ///   string appears over all the data points.
    ///   - hoverText: Sets hover text elements associated with each (lon,lat) pair If a single string,
    ///   the same string appears over all the data points.
    ///   - line:
    ///   - marker:
    public init(name: String? = nil, longitude: CoordinateData? = nil, latitude: CoordinateData? =
            nil, mode: Shared.Mode? = nil, text: Data<String>? = nil, hoverText: Data<String>? = nil, line:
            Shared.Line? = nil, marker: SymbolicMarker? = nil) {
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
        self.mode = mode
        self.text = text
        self.hoverText = hoverText
        self.line = line
        self.marker = marker
    }
    
    /// Creates `ScatterMapbox` object with specified properties.
    /// 
    /// - Parameters:
    ///   - visible: Determines whether or not this trace is visible.
    ///   - showLegend: Determines whether or not an item corresponding to this trace is shown in the
    ///   legend.
    ///   - legendGroup: Sets the legend group for this trace.
    ///   - opacity: Sets the opacity of the trace.
    ///   - name: Sets the trace name.
    ///   - uid: Assign an id to this trace, Use this to provide object constancy between traces during
    ///   animations and transitions.
    ///   - ids: Assigns id labels to each datum.
    ///   - customData: Assigns extra data each datum.
    ///   - meta: Assigns extra meta information associated with this trace that can be used in various
    ///   text attributes.
    ///   - selectedPoints: Array containing integer indices of selected points.
    ///   - hoverLabel:
    ///   - stream:
    ///   - transforms:
    ///   - uiRevision: Controls persistence of some user-driven changes to the trace: `constraintrange`
    ///   in `parcoords` traces, as well as some `editable: true` modifications such as `name` and
    ///   `colorbar.title`.
    ///   - longitude: Sets the longitude coordinates (in degrees East).
    ///   - latitude: Sets the latitude coordinates (in degrees North).
    ///   - mode: Determines the drawing mode for this scatter trace.
    ///   - text: Sets text elements associated with each (lon,lat) pair If a single string, the same
    ///   string appears over all the data points.
    ///   - textTemplate: Template string used for rendering the information text that appear on points.
    ///   - hoverText: Sets hover text elements associated with each (lon,lat) pair If a single string,
    ///   the same string appears over all the data points.
    ///   - line:
    ///   - connectGaps: Determines whether or not gaps (i.e.
    ///   - marker:
    ///   - fill: Sets the area to fill with a solid color.
    ///   - fillColor: Sets the fill color.
    ///   - textFont: Sets the icon text font (color=mapbox.layer.paint.text-color,
    ///   size=mapbox.layer.layout.text-size).
    ///   - textPosition: Sets the positions of the `text` elements with respects to the (x,y)
    ///   coordinates.
    ///   - below: Determines if this scattermapbox trace's layers are to be inserted before the layer
    ///   with the specified ID.
    ///   - selected:
    ///   - unselected:
    ///   - hoverInfo: Determines which trace information appear on hover.
    ///   - hoverTemplate: Template string used for rendering the information that appear on hover box.
    ///   - subPlot: Sets a reference between this trace's data coordinates and a mapbox subplot.
    public init(visible: Shared.Visible? = nil, showLegend: Bool? = nil, legendGroup: String? = nil,
            opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [String]? = nil,
            customData: [String]? = nil, meta: Data<Anything>? = nil, selectedPoints: Anything? = nil,
            hoverLabel: Shared.HoverLabel? = nil, stream: Shared.Stream? = nil, transforms:
            [Shared.Transform]? = nil, uiRevision: Anything? = nil, longitude: CoordinateData? = nil,
            latitude: CoordinateData? = nil, mode: Shared.Mode? = nil, text: Data<String>? = nil,
            textTemplate: Data<String>? = nil, hoverText: Data<String>? = nil, line: Shared.Line? = nil,
            connectGaps: Bool? = nil, marker: SymbolicMarker? = nil, fill: Fill? = nil, fillColor: Color? =
            nil, textFont: Shared.Font? = nil, textPosition: Shared.TextPosition? = nil, below: String? =
            nil, selected: Selected? = nil, unselected: Unselected? = nil, hoverInfo: HoverInfo? = nil,
            hoverTemplate: Data<String>? = nil, subPlot: SubPlotID? = nil) {
        self.visible = visible
        self.showLegend = showLegend
        self.legendGroup = legendGroup
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.selectedPoints = selectedPoints
        self.hoverLabel = hoverLabel
        self.stream = stream
        self.transforms = transforms
        self.uiRevision = uiRevision
        self.longitude = longitude
        self.latitude = latitude
        self.mode = mode
        self.text = text
        self.textTemplate = textTemplate
        self.hoverText = hoverText
        self.line = line
        self.connectGaps = connectGaps
        self.marker = marker
        self.fill = fill
        self.fillColor = fillColor
        self.textFont = textFont
        self.textPosition = textPosition
        self.below = below
        self.selected = selected
        self.unselected = unselected
        self.hoverInfo = hoverInfo
        self.hoverTemplate = hoverTemplate
        self.subPlot = subPlot
    }
    
    /// Encodes the object in a format compatible with Plotly.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(animatable, forKey: .animatable)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(showLegend, forKey: .showLegend)
        try container.encodeIfPresent(legendGroup, forKey: .legendGroup)
        try container.encodeIfPresent(opacity, forKey: .opacity)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(customData, forKey: .customData)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(selectedPoints, forKey: .selectedPoints)
        try container.encodeIfPresent(hoverLabel, forKey: .hoverLabel)
        try container.encodeIfPresent(stream, forKey: .stream)
        try container.encodeIfPresent(transforms, forKey: .transforms)
        try container.encodeIfPresent(uiRevision, forKey: .uiRevision)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(textTemplate, forKey: .textTemplate)
        try container.encodeIfPresent(hoverText, forKey: .hoverText)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(connectGaps, forKey: .connectGaps)
        try container.encodeIfPresent(marker, forKey: .marker)
        try container.encodeIfPresent(fill, forKey: .fill)
        try container.encodeIfPresent(fillColor, forKey: .fillColor)
        try container.encodeIfPresent(textFont, forKey: .textFont)
        try container.encodeIfPresent(textPosition, forKey: .textPosition)
        try container.encodeIfPresent(below, forKey: .below)
        try container.encodeIfPresent(selected, forKey: .selected)
        try container.encodeIfPresent(unselected, forKey: .unselected)
        try container.encodeIfPresent(hoverInfo, forKey: .hoverInfo)
        try container.encodeIfPresent(hoverTemplate, forKey: .hoverTemplate)
        try container.encodeIfPresent(subPlot, forKey: .subPlot)
    
        if let longitude = self.longitude {
            let longitudeEncoder = container.superEncoder(forKey: .longitude)
            try longitude.encode(toPlotly: longitudeEncoder)
        }
    
        if let latitude = self.latitude {
            let latitudeEncoder = container.superEncoder(forKey: .latitude)
            try latitude.encode(toPlotly: latitudeEncoder)
        }
    }
    
}