/// The data describing carpet axis layout is set in `y` and (optionally) also `x`. 
///
/// If only `y` is present, `x` the plot is interpreted as a cheater plot and is filled in using the
/// `y` values. `x` and `y` may either be 2D arrays matching with each dimension matching that of
/// `a` and `b`, or they may be 1D arrays with total length equal to that of `a` and `b`.
public struct Carpet: Trace {
    public let type: String = "carpet"

    public let animatable: Bool = true

    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    /// - traces/bar/attributes/visible
    /// - traces/barpolar/attributes/visible
    /// - traces/box/attributes/visible
    /// - traces/candlestick/attributes/visible
    /// - traces/carpet/attributes/visible
    /// - traces/choropleth/attributes/visible
    /// - traces/cone/attributes/visible
    /// - traces/contourcarpet/attributes/visible
    /// - traces/densitymapbox/attributes/visible
    /// - traces/funnel/attributes/visible
    /// - traces/funnelarea/attributes/visible
    /// - traces/heatmapgl/attributes/visible
    /// - traces/histogram/attributes/visible
    /// - traces/histogram2d/attributes/visible
    /// - traces/histogram2dcontour/attributes/visible
    /// - traces/mesh3d/attributes/visible
    /// - traces/ohlc/attributes/visible
    /// - traces/parcats/attributes/visible
    /// - traces/parcoords/attributes/visible
    /// - traces/pie/attributes/visible
    /// - traces/pointcloud/attributes/visible
    /// - traces/sankey/attributes/visible
    /// - traces/scatter3d/attributes/visible
    /// - traces/scattercarpet/attributes/visible
    /// - traces/scattergeo/attributes/visible
    /// - traces/scattermapbox/attributes/visible
    /// - traces/scatterpolar/attributes/visible
    /// - traces/scatterpolargl/attributes/visible
    /// - traces/scatterternary/attributes/visible
    /// - traces/splom/attributes/visible
    /// - traces/streamtube/attributes/visible
    /// - traces/sunburst/attributes/visible
    /// - traces/surface/attributes/visible
    /// - traces/violin/attributes/visible
    /// - traces/volume/attributes/visible
    /// - traces/waterfall/attributes/visible
    public enum Visible: String, Encodable {
        case `true` = "true"
        case `false` = "false"
        case legendOnly = "legendonly"
    }
    /// Determines whether or not this trace is visible. 
    ///
    /// If *legendonly*, the trace is not drawn, but can appear as a legend item (provided that the
    /// legend itself is visible).
    public var visible: Visible?

    /// Sets the opacity of the trace.
    public var opacity: Double?

    /// Sets the trace name. 
    ///
    /// The trace name appear as the legend item and on hover.
    public var name: String?

    /// Assign an id to this trace, Use this to provide object constancy between traces during animations and transitions.
    public var uid: String?

    /// Assigns id labels to each datum. 
    ///
    /// These ids for object constancy of data points during animation. Should be an array of strings,
    /// not numbers or any other type.
    public var ids: [Double]?

    /// Assigns extra data each datum. 
    ///
    /// This may be useful when listening to hover, click and selection events. Note that, *scatter*
    /// traces also appends customdata items in the markers DOM elements
    public var customData: [Double]?

    /// Assigns extra meta information associated with this trace that can be used in various text attributes. 
    ///
    /// Attributes such as trace `name`, graph, axis and colorbar `title.text`, annotation `text`
    /// `rangeselector`, `updatemenues` and `sliders` `label` text all support `meta`. To access the
    /// trace `meta` values in an attribute in the same trace, simply use `%{meta[i]}` where `i` is the
    /// index or key of the `meta` item in question. To access trace `meta` in layout attributes, use
    /// `%{data[n[.meta[i]}` where `i` is the index or key of the `meta` and `n` is the trace index.
    public var meta: Anything?

    /// - traces/carpet/attributes/stream
    public struct Stream: Encodable {
        /// The stream id number links a data trace on a plot with a stream. 
        ///
        /// See https://plot.ly/settings for more details.
        public var token: String?
    
        /// Sets the maximum number of points to keep on the plots from an incoming stream. 
        ///
        /// If `maxpoints` is set to *50*, only the newest 50 points will be displayed on the plot.
        public var maxPoints: Double?
    
        public init(token: String? = nil, maxPoints: Double? = nil) {
            self.token = token
            self.maxPoints = maxPoints
        }
    }
    public var stream: Stream?

    /// Controls persistence of some user-driven changes to the trace: `constraintrange` in `parcoords` traces, as well as some `editable: true` modifications such as `name` and `colorbar.title`. 
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

    /// An identifier for this carpet, so that `scattercarpet` and `contourcarpet` traces can specify a carpet plot on which they lie
    public var carpet: String?

    /// A two dimensional array of x coordinates at each carpet point. 
    ///
    /// If ommitted, the plot is a cheater plot and the xaxis is hidden by default.
    public var x: [Double]?

    /// A two dimensional array of y coordinates at each carpet point.
    public var y: [Double]?

    /// An array containing values of the first parameter value
    public var a: [Double]?

    /// Alternate to `a`. 
    ///
    /// Builds a linear space of a coordinates. Use with `da` where `a0` is the starting coordinate and
    /// `da` the step.
    public var a0: Double?

    /// Sets the a coordinate step. 
    ///
    /// See `a0` for more info.
    public var da: Double?

    /// A two dimensional array of y coordinates at each carpet point.
    public var b: [Double]?

    /// Alternate to `b`. 
    ///
    /// Builds a linear space of a coordinates. Use with `db` where `b0` is the starting coordinate and
    /// `db` the step.
    public var b0: Double?

    /// Sets the b coordinate step. 
    ///
    /// See `b0` for more info.
    public var db: Double?

    /// The shift applied to each successive row of data in creating a cheater plot. 
    ///
    /// Only used if `x` is been ommitted.
    public var cheaterSlope: Double?

    /// - traces/carpet/attributes/aaxis
    public struct AAxis: Encodable {
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        public var color: Color?
    
        public var smoothing: Double?
    
        /// - traces/carpet/attributes/aaxis/title
        public struct Title: Encodable {
            /// Sets the title of this axis. 
            ///
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            public var text: String?
        
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            /// - traces/carpet/attributes/aaxis/title/font
            public struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. 
                ///
                /// The web browser will only be able to apply a font if it is available on the system which it
                /// operates. Provide multiple font families, separated by commas, to indicate the preference in
                /// which to apply fonts if they aren't available on the system. The plotly service (at
                /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
                /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
                /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
                /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            public var font: Font?
        
            /// An additional amount by which to offset the title from the tick labels, given in pixels. 
            ///
            /// Note that this used to be set by the now deprecated `titleoffset` attribute.
            public var offset: Double?
        
            public init(text: String? = nil, font: Font? = nil, offset: Double? = nil) {
                self.text = text
                self.font = font
                self.offset = offset
            }
        }
        public var title: Title?
    
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        /// - traces/carpet/attributes/aaxis/type
        public enum Rule: String, Encodable {
            case auto = "-"
            case linear
            case date
            case category
        }
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        public var type: Rule?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        /// - layout/layoutAttributes/polar/radialaxis/autorange
        /// - layout/layoutAttributes/scene/xaxis/autorange
        /// - layout/layoutAttributes/scene/yaxis/autorange
        /// - layout/layoutAttributes/scene/zaxis/autorange
        /// - layout/layoutAttributes/xaxis/autorange
        /// - layout/layoutAttributes/yaxis/autorange
        /// - traces/carpet/attributes/aaxis/autorange
        public enum AutoRange: String, Encodable {
            case `true` = "true"
            case `false` = "false"
            case reversed
        }
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        public var autoRange: AutoRange?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        /// - layout/layoutAttributes/scene/xaxis/rangemode
        /// - layout/layoutAttributes/scene/yaxis/rangemode
        /// - layout/layoutAttributes/scene/zaxis/rangemode
        /// - layout/layoutAttributes/xaxis/rangemode
        /// - layout/layoutAttributes/yaxis/rangemode
        /// - traces/carpet/attributes/aaxis/rangemode
        public enum RangeMode: String, Encodable {
            case normal
            case toZero = "tozero"
            case nonNegative = "nonnegative"
        }
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        public var rangeMode: RangeMode?
    
        /// Sets the range of this axis. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        public var fixedRange: Bool?
    
        /// - traces/carpet/attributes/aaxis/cheatertype
        public enum CheaterType: String, Encodable {
            case index
            case value
        }
        public var cheaterType: CheaterType?
    
        /// - traces/carpet/attributes/aaxis/tickmode
        public enum TickMode: String, Encodable {
            case linear
            case array
        }
        public var tickMode: TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. 
        ///
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        public var numTicks: Int?
    
        /// Sets the values at which ticks on this axis appear. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        public var tickText: [Double]?
    
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        /// - traces/carpet/attributes/aaxis/showticklabels
        public enum ShowTickLabels: String, Encodable {
            case start
            case end
            case both
            case none
        }
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        public var showTickLabels: ShowTickLabels?
    
        /// Sets the tick font.
        /// - traces/carpet/attributes/aaxis/tickfont
        public struct TickFont: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. 
            ///
            /// The web browser will only be able to apply a font if it is available on the system which it
            /// operates. Provide multiple font families, separated by commas, to indicate the preference in
            /// which to apply fonts if they aren't available on the system. The plotly service (at
            /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
            /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
            /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
            /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                self.family = family
                self.size = size
                self.color = color
            }
        }
        /// Sets the tick font.
        public var tickFont: TickFont?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        public var tickPrefix: String?
    
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        /// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
        /// - layout/layoutAttributes/polar/angularaxis/showtickprefix
        /// - layout/layoutAttributes/polar/radialaxis/showtickprefix
        /// - layout/layoutAttributes/scene/xaxis/showtickprefix
        /// - layout/layoutAttributes/scene/yaxis/showtickprefix
        /// - layout/layoutAttributes/scene/zaxis/showtickprefix
        /// - layout/layoutAttributes/ternary/aaxis/showtickprefix
        /// - layout/layoutAttributes/ternary/baxis/showtickprefix
        /// - layout/layoutAttributes/ternary/caxis/showtickprefix
        /// - layout/layoutAttributes/xaxis/showtickprefix
        /// - layout/layoutAttributes/yaxis/showtickprefix
        /// - traces/bar/attributes/marker/colorbar/showtickprefix
        /// - traces/barpolar/attributes/marker/colorbar/showtickprefix
        /// - traces/carpet/attributes/aaxis/showtickprefix
        /// - traces/choropleth/attributes/colorbar/showtickprefix
        /// - traces/cone/attributes/colorbar/showtickprefix
        /// - traces/contourcarpet/attributes/colorbar/showtickprefix
        /// - traces/densitymapbox/attributes/colorbar/showtickprefix
        /// - traces/funnel/attributes/marker/colorbar/showtickprefix
        /// - traces/heatmapgl/attributes/colorbar/showtickprefix
        /// - traces/histogram/attributes/marker/colorbar/showtickprefix
        /// - traces/histogram2d/attributes/colorbar/showtickprefix
        /// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
        /// - traces/mesh3d/attributes/colorbar/showtickprefix
        /// - traces/parcats/attributes/line/colorbar/showtickprefix
        /// - traces/parcoords/attributes/line/colorbar/showtickprefix
        /// - traces/scatter3d/attributes/line/colorbar/showtickprefix
        /// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
        /// - traces/scattercarpet/attributes/marker/colorbar/showtickprefix
        /// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
        /// - traces/scattermapbox/attributes/marker/colorbar/showtickprefix
        /// - traces/scatterpolar/attributes/marker/colorbar/showtickprefix
        /// - traces/scatterpolargl/attributes/marker/colorbar/showtickprefix
        /// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
        /// - traces/splom/attributes/marker/colorbar/showtickprefix
        /// - traces/streamtube/attributes/colorbar/showtickprefix
        /// - traces/sunburst/attributes/marker/colorbar/showtickprefix
        /// - traces/surface/attributes/colorbar/showtickprefix
        /// - traces/volume/attributes/colorbar/showtickprefix
        public enum ShowTickPrefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        public var showTickPrefix: ShowTickPrefix?
    
        /// Sets a tick label suffix.
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
        /// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
        /// - layout/layoutAttributes/polar/angularaxis/showticksuffix
        /// - layout/layoutAttributes/polar/radialaxis/showticksuffix
        /// - layout/layoutAttributes/scene/xaxis/showticksuffix
        /// - layout/layoutAttributes/scene/yaxis/showticksuffix
        /// - layout/layoutAttributes/scene/zaxis/showticksuffix
        /// - layout/layoutAttributes/ternary/aaxis/showticksuffix
        /// - layout/layoutAttributes/ternary/baxis/showticksuffix
        /// - layout/layoutAttributes/ternary/caxis/showticksuffix
        /// - layout/layoutAttributes/xaxis/showticksuffix
        /// - layout/layoutAttributes/yaxis/showticksuffix
        /// - traces/bar/attributes/marker/colorbar/showticksuffix
        /// - traces/barpolar/attributes/marker/colorbar/showticksuffix
        /// - traces/carpet/attributes/aaxis/showticksuffix
        /// - traces/choropleth/attributes/colorbar/showticksuffix
        /// - traces/cone/attributes/colorbar/showticksuffix
        /// - traces/contourcarpet/attributes/colorbar/showticksuffix
        /// - traces/densitymapbox/attributes/colorbar/showticksuffix
        /// - traces/funnel/attributes/marker/colorbar/showticksuffix
        /// - traces/heatmapgl/attributes/colorbar/showticksuffix
        /// - traces/histogram/attributes/marker/colorbar/showticksuffix
        /// - traces/histogram2d/attributes/colorbar/showticksuffix
        /// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
        /// - traces/mesh3d/attributes/colorbar/showticksuffix
        /// - traces/parcats/attributes/line/colorbar/showticksuffix
        /// - traces/parcoords/attributes/line/colorbar/showticksuffix
        /// - traces/scatter3d/attributes/line/colorbar/showticksuffix
        /// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
        /// - traces/scattercarpet/attributes/marker/colorbar/showticksuffix
        /// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
        /// - traces/scattermapbox/attributes/marker/colorbar/showticksuffix
        /// - traces/scatterpolar/attributes/marker/colorbar/showticksuffix
        /// - traces/scatterpolargl/attributes/marker/colorbar/showticksuffix
        /// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
        /// - traces/splom/attributes/marker/colorbar/showticksuffix
        /// - traces/streamtube/attributes/colorbar/showticksuffix
        /// - traces/sunburst/attributes/marker/colorbar/showticksuffix
        /// - traces/surface/attributes/colorbar/showticksuffix
        /// - traces/volume/attributes/colorbar/showticksuffix
        public enum ShowTickSuffix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// Same as `showtickprefix` but for tick suffixes.
        public var showTickSuffix: ShowTickSuffix?
    
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        /// - layout/layoutAttributes/coloraxis/colorbar/showexponent
        /// - layout/layoutAttributes/polar/angularaxis/showexponent
        /// - layout/layoutAttributes/polar/radialaxis/showexponent
        /// - layout/layoutAttributes/scene/xaxis/showexponent
        /// - layout/layoutAttributes/scene/yaxis/showexponent
        /// - layout/layoutAttributes/scene/zaxis/showexponent
        /// - layout/layoutAttributes/ternary/aaxis/showexponent
        /// - layout/layoutAttributes/ternary/baxis/showexponent
        /// - layout/layoutAttributes/ternary/caxis/showexponent
        /// - layout/layoutAttributes/xaxis/showexponent
        /// - layout/layoutAttributes/yaxis/showexponent
        /// - traces/bar/attributes/marker/colorbar/showexponent
        /// - traces/barpolar/attributes/marker/colorbar/showexponent
        /// - traces/carpet/attributes/aaxis/showexponent
        /// - traces/choropleth/attributes/colorbar/showexponent
        /// - traces/cone/attributes/colorbar/showexponent
        /// - traces/contourcarpet/attributes/colorbar/showexponent
        /// - traces/densitymapbox/attributes/colorbar/showexponent
        /// - traces/funnel/attributes/marker/colorbar/showexponent
        /// - traces/heatmapgl/attributes/colorbar/showexponent
        /// - traces/histogram/attributes/marker/colorbar/showexponent
        /// - traces/histogram2d/attributes/colorbar/showexponent
        /// - traces/histogram2dcontour/attributes/colorbar/showexponent
        /// - traces/mesh3d/attributes/colorbar/showexponent
        /// - traces/parcats/attributes/line/colorbar/showexponent
        /// - traces/parcoords/attributes/line/colorbar/showexponent
        /// - traces/scatter3d/attributes/line/colorbar/showexponent
        /// - traces/scatter3d/attributes/marker/colorbar/showexponent
        /// - traces/scattercarpet/attributes/marker/colorbar/showexponent
        /// - traces/scattergeo/attributes/marker/colorbar/showexponent
        /// - traces/scattermapbox/attributes/marker/colorbar/showexponent
        /// - traces/scatterpolar/attributes/marker/colorbar/showexponent
        /// - traces/scatterpolargl/attributes/marker/colorbar/showexponent
        /// - traces/scatterternary/attributes/marker/colorbar/showexponent
        /// - traces/splom/attributes/marker/colorbar/showexponent
        /// - traces/streamtube/attributes/colorbar/showexponent
        /// - traces/sunburst/attributes/marker/colorbar/showexponent
        /// - traces/surface/attributes/colorbar/showexponent
        /// - traces/volume/attributes/colorbar/showexponent
        public enum ShowExponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        public var showExponent: ShowExponent?
    
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        /// - layout/layoutAttributes/coloraxis/colorbar/exponentformat
        /// - layout/layoutAttributes/polar/angularaxis/exponentformat
        /// - layout/layoutAttributes/polar/radialaxis/exponentformat
        /// - layout/layoutAttributes/scene/xaxis/exponentformat
        /// - layout/layoutAttributes/scene/yaxis/exponentformat
        /// - layout/layoutAttributes/scene/zaxis/exponentformat
        /// - layout/layoutAttributes/ternary/aaxis/exponentformat
        /// - layout/layoutAttributes/ternary/baxis/exponentformat
        /// - layout/layoutAttributes/ternary/caxis/exponentformat
        /// - layout/layoutAttributes/xaxis/exponentformat
        /// - layout/layoutAttributes/yaxis/exponentformat
        /// - traces/bar/attributes/marker/colorbar/exponentformat
        /// - traces/barpolar/attributes/marker/colorbar/exponentformat
        /// - traces/carpet/attributes/aaxis/exponentformat
        /// - traces/choropleth/attributes/colorbar/exponentformat
        /// - traces/cone/attributes/colorbar/exponentformat
        /// - traces/contourcarpet/attributes/colorbar/exponentformat
        /// - traces/densitymapbox/attributes/colorbar/exponentformat
        /// - traces/funnel/attributes/marker/colorbar/exponentformat
        /// - traces/heatmapgl/attributes/colorbar/exponentformat
        /// - traces/histogram/attributes/marker/colorbar/exponentformat
        /// - traces/histogram2d/attributes/colorbar/exponentformat
        /// - traces/histogram2dcontour/attributes/colorbar/exponentformat
        /// - traces/mesh3d/attributes/colorbar/exponentformat
        /// - traces/parcats/attributes/line/colorbar/exponentformat
        /// - traces/parcoords/attributes/line/colorbar/exponentformat
        /// - traces/scatter3d/attributes/line/colorbar/exponentformat
        /// - traces/scatter3d/attributes/marker/colorbar/exponentformat
        /// - traces/scattercarpet/attributes/marker/colorbar/exponentformat
        /// - traces/scattergeo/attributes/marker/colorbar/exponentformat
        /// - traces/scattermapbox/attributes/marker/colorbar/exponentformat
        /// - traces/scatterpolar/attributes/marker/colorbar/exponentformat
        /// - traces/scatterpolargl/attributes/marker/colorbar/exponentformat
        /// - traces/scatterternary/attributes/marker/colorbar/exponentformat
        /// - traces/splom/attributes/marker/colorbar/exponentformat
        /// - traces/streamtube/attributes/colorbar/exponentformat
        /// - traces/sunburst/attributes/marker/colorbar/exponentformat
        /// - traces/surface/attributes/colorbar/exponentformat
        /// - traces/volume/attributes/colorbar/exponentformat
        public enum ExponentFormat: String, Encodable {
            case none
            case e
            case E
            case power
            case SI
            case B
        }
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        public var exponentFormat: ExponentFormat?
    
        /// If "true", even 4-digit integers are separated
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see: We add one item to d3's date formatter: *%{n}f* for fractional seconds with n
        /// digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display
        /// *09~15~23.46*
        public var tickFormat: String?
    
        /// - traces/carpet/attributes/aaxis/tickformatstops
        public struct TickFormatStops: Encodable {
            /// - traces/carpet/attributes/aaxis/tickformatstops/items
            public struct Items: Encodable {
                /// - traces/carpet/attributes/aaxis/tickformatstops/items/tickformatstop
                public struct TickFormatStop: Encodable {
                    /// Determines whether or not this stop is used. 
                    ///
                    /// If `false`, this stop is ignored even within its `dtickrange`.
                    public var enabled: Bool?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    public var dTickRange: InfoArray?
                
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    public var value: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                    ///
                    /// You can modify these items in the output figure by making your own item with `templateitemname`
                    /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                    /// false` to hide it). Has no effect outside of a template.
                    public var name: String?
                
                    /// Used to refer to a named item in this array in the template. 
                    ///
                    /// Named items from the template will be created even without a matching item in the input figure,
                    /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                    /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                    /// template or no matching item, this item will be hidden unless you explicitly show it with
                    /// `visible: true`.
                    public var templateItemName: String?
                
                    public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
                        self.enabled = enabled
                        self.dTickRange = dTickRange
                        self.value = value
                        self.name = name
                        self.templateItemName = templateItemName
                    }
                }
                public var tickFormatStop: TickFormatStop?
            
                public init(tickFormatStop: TickFormatStop? = nil) {
                    self.tickFormatStop = tickFormatStop
                }
            }
            public var items: Items?
        
            public init(items: Items? = nil) {
                self.items = items
            }
        }
        public var tickFormatStops: TickFormatStops?
    
        /// Specifies the ordering logic for the categories in the dimension. 
        ///
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        /// - traces/carpet/attributes/aaxis/categoryorder
        /// - traces/parcats/attributes/dimensions/items/dimension/categoryorder
        public enum CategoryOrder: String, Encodable {
            case trace
            case categoryAscending = "category ascending"
            case categoryDescending = "category descending"
            case array
        }
        /// Specifies the ordering logic for the categories in the dimension. 
        ///
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        public var categoryOrder: CategoryOrder?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]?
    
        /// Extra padding between label and the axis
        public var labelPadding: Int?
    
        /// Sets a axis label prefix.
        public var labelPrefix: String?
    
        /// Sets a axis label suffix.
        public var labelSuffix: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        public var showLine: Bool?
    
        /// Sets the axis line color.
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        public var lineWidth: Double?
    
        /// Sets the axis line color.
        public var gridColor: Color?
    
        /// Sets the width (in px) of the axis line.
        public var gridWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        public var showGrid: Bool?
    
        /// Sets the number of minor grid ticks per major grid tick
        public var minorGridCount: Int?
    
        /// Sets the width (in px) of the grid lines.
        public var minorGridWidth: Double?
    
        /// Sets the color of the grid lines.
        public var minorGridColor: Color?
    
        /// Determines whether or not a line is drawn at along the starting value of this axis. 
        ///
        /// If *true*, the start line is drawn on top of the grid lines.
        public var startLine: Bool?
    
        /// Sets the line color of the start line.
        public var startLineColor: Color?
    
        /// Sets the width (in px) of the start line.
        public var startLineWidth: Double?
    
        /// Determines whether or not a line is drawn at along the final value of this axis. 
        ///
        /// If *true*, the end line is drawn on top of the grid lines.
        public var endLine: Bool?
    
        /// Sets the width (in px) of the end line.
        public var endLineWidth: Double?
    
        /// Sets the line color of the end line.
        public var endLineColor: Color?
    
        /// The starting index of grid lines along the axis
        public var tick0: Double?
    
        /// The stride between grid lines along the axis
        public var dTick: Double?
    
        /// The starting index of grid lines along the axis
        public var arrayTick0: Int?
    
        /// The stride between grid lines along the axis
        public var arraydTick: Int?
    
        /// - traces/carpet/attributes/aaxis/_deprecated
        public struct Deprecated: Encodable {
            /// Deprecated in favor of `title.text`. 
            ///
            /// Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
            public var title: String?
        
            /// Deprecated in favor of `title.font`.
            /// - traces/carpet/attributes/aaxis/_deprecated/titlefont
            public struct TitleFont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. 
                ///
                /// The web browser will only be able to apply a font if it is available on the system which it
                /// operates. Provide multiple font families, separated by commas, to indicate the preference in
                /// which to apply fonts if they aren't available on the system. The plotly service (at
                /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
                /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
                /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
                /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Deprecated in favor of `title.font`.
            public var titleFont: TitleFont?
        
            /// Deprecated in favor of `title.offset`.
            public var titleOffset: Double?
        
            public init(title: String? = nil, titleFont: TitleFont? = nil, titleOffset: Double? = nil) {
                self.title = title
                self.titleFont = titleFont
                self.titleOffset = titleOffset
            }
        }
        public var deprecated: Deprecated?
    
        /// Sets the source reference on plot.ly for  tickvals .
        public var tickValuesSource: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        public var tickTextSource: String?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        public var categoryArraySource: String?
    
        public init(color: Color? = nil, smoothing: Double? = nil, title: Title? = nil, type: Rule? = nil, autoRange: AutoRange? = nil, rangeMode: RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, cheaterType: CheaterType? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, showTickLabels: ShowTickLabels? = nil, tickFont: TickFont? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix? = nil, showExponent: ShowExponent? = nil, exponentFormat: ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops? = nil, categoryOrder: CategoryOrder? = nil, categoryArray: [Double]? = nil, labelPadding: Int? = nil, labelPrefix: String? = nil, labelSuffix: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, showGrid: Bool? = nil, minorGridCount: Int? = nil, minorGridWidth: Double? = nil, minorGridColor: Color? = nil, startLine: Bool? = nil, startLineColor: Color? = nil, startLineWidth: Double? = nil, endLine: Bool? = nil, endLineWidth: Double? = nil, endLineColor: Color? = nil, tick0: Double? = nil, dTick: Double? = nil, arrayTick0: Int? = nil, arraydTick: Int? = nil, deprecated: Deprecated? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil, categoryArraySource: String? = nil) {
            self.color = color
            self.smoothing = smoothing
            self.title = title
            self.type = type
            self.autoRange = autoRange
            self.rangeMode = rangeMode
            self.range = range
            self.fixedRange = fixedRange
            self.cheaterType = cheaterType
            self.tickMode = tickMode
            self.numTicks = numTicks
            self.tickValues = tickValues
            self.tickText = tickText
            self.showTickLabels = showTickLabels
            self.tickFont = tickFont
            self.tickAngle = tickAngle
            self.tickPrefix = tickPrefix
            self.showTickPrefix = showTickPrefix
            self.tickSuffix = tickSuffix
            self.showTickSuffix = showTickSuffix
            self.showExponent = showExponent
            self.exponentFormat = exponentFormat
            self.separatethousands = separatethousands
            self.tickFormat = tickFormat
            self.tickFormatStops = tickFormatStops
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.labelPadding = labelPadding
            self.labelPrefix = labelPrefix
            self.labelSuffix = labelSuffix
            self.showLine = showLine
            self.lineColor = lineColor
            self.lineWidth = lineWidth
            self.gridColor = gridColor
            self.gridWidth = gridWidth
            self.showGrid = showGrid
            self.minorGridCount = minorGridCount
            self.minorGridWidth = minorGridWidth
            self.minorGridColor = minorGridColor
            self.startLine = startLine
            self.startLineColor = startLineColor
            self.startLineWidth = startLineWidth
            self.endLine = endLine
            self.endLineWidth = endLineWidth
            self.endLineColor = endLineColor
            self.tick0 = tick0
            self.dTick = dTick
            self.arrayTick0 = arrayTick0
            self.arraydTick = arraydTick
            self.deprecated = deprecated
            self.tickValuesSource = tickValuesSource
            self.tickTextSource = tickTextSource
            self.categoryArraySource = categoryArraySource
        }
    }
    public var aAxis: AAxis?

    /// - traces/carpet/attributes/baxis
    public struct BAxis: Encodable {
        /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
        ///
        /// Grid color is lightened by blending this with the plot background Individual pieces can override
        /// this.
        public var color: Color?
    
        public var smoothing: Double?
    
        /// - traces/carpet/attributes/baxis/title
        public struct Title: Encodable {
            /// Sets the title of this axis. 
            ///
            /// Note that before the existence of `title.text`, the title's contents used to be defined as the
            /// `title` attribute itself. This behavior has been deprecated.
            public var text: String?
        
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            /// - traces/carpet/attributes/baxis/title/font
            public struct Font: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. 
                ///
                /// The web browser will only be able to apply a font if it is available on the system which it
                /// operates. Provide multiple font families, separated by commas, to indicate the preference in
                /// which to apply fonts if they aren't available on the system. The plotly service (at
                /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
                /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
                /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
                /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Sets this axis' title font. 
            ///
            /// Note that the title's font used to be set by the now deprecated `titlefont` attribute.
            public var font: Font?
        
            /// An additional amount by which to offset the title from the tick labels, given in pixels. 
            ///
            /// Note that this used to be set by the now deprecated `titleoffset` attribute.
            public var offset: Double?
        
            public init(text: String? = nil, font: Font? = nil, offset: Double? = nil) {
                self.text = text
                self.font = font
                self.offset = offset
            }
        }
        public var title: Title?
    
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        /// - traces/carpet/attributes/aaxis/type
        /// - traces/carpet/attributes/baxis/type
        public enum Rule: String, Encodable {
            case auto = "-"
            case linear
            case date
            case category
        }
        /// Sets the axis type. 
        ///
        /// By default, plotly attempts to determined the axis type by looking into the data of the traces
        /// that referenced the axis in question.
        public var type: Rule?
    
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        /// - layout/layoutAttributes/polar/radialaxis/autorange
        /// - layout/layoutAttributes/scene/xaxis/autorange
        /// - layout/layoutAttributes/scene/yaxis/autorange
        /// - layout/layoutAttributes/scene/zaxis/autorange
        /// - layout/layoutAttributes/xaxis/autorange
        /// - layout/layoutAttributes/yaxis/autorange
        /// - traces/carpet/attributes/aaxis/autorange
        /// - traces/carpet/attributes/baxis/autorange
        public enum AutoRange: String, Encodable {
            case `true` = "true"
            case `false` = "false"
            case reversed
        }
        /// Determines whether or not the range of this axis is computed in relation to the input data. 
        ///
        /// See `rangemode` for more info. If `range` is provided, then `autorange` is set to *false*.
        public var autoRange: AutoRange?
    
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        /// - layout/layoutAttributes/scene/xaxis/rangemode
        /// - layout/layoutAttributes/scene/yaxis/rangemode
        /// - layout/layoutAttributes/scene/zaxis/rangemode
        /// - layout/layoutAttributes/xaxis/rangemode
        /// - layout/layoutAttributes/yaxis/rangemode
        /// - traces/carpet/attributes/aaxis/rangemode
        /// - traces/carpet/attributes/baxis/rangemode
        public enum RangeMode: String, Encodable {
            case normal
            case toZero = "tozero"
            case nonNegative = "nonnegative"
        }
        /// If *normal*, the range is computed in relation to the extrema of the input data. 
        ///
        /// If *tozero*`, the range extends to 0, regardless of the input data If *nonnegative*, the range
        /// is non-negative, regardless of the input data. Applies only to linear axes.
        public var rangeMode: RangeMode?
    
        /// Sets the range of this axis. 
        ///
        /// If the axis `type` is *log*, then you must take the log of your desired range (e.g. to set the
        /// range from 1 to 100, set the range from 0 to 2). If the axis `type` is *date*, it should be date
        /// strings, like date data, though Date objects and unix milliseconds will be accepted and
        /// converted to strings. If the axis `type` is *category*, it should be numbers, using the scale
        /// where each category is assigned a serial number from zero in the order it appears.
        public var range: InfoArray?
    
        /// Determines whether or not this axis is zoom-able. 
        ///
        /// If true, then zoom is disabled.
        public var fixedRange: Bool?
    
        /// - traces/carpet/attributes/aaxis/cheatertype
        /// - traces/carpet/attributes/baxis/cheatertype
        public enum CheaterType: String, Encodable {
            case index
            case value
        }
        public var cheaterType: CheaterType?
    
        /// - traces/carpet/attributes/aaxis/tickmode
        /// - traces/carpet/attributes/baxis/tickmode
        public enum TickMode: String, Encodable {
            case linear
            case array
        }
        public var tickMode: TickMode?
    
        /// Specifies the maximum number of ticks for the particular axis. 
        ///
        /// The actual number of ticks will be chosen automatically to be less than or equal to `nticks`.
        /// Has an effect only if `tickmode` is set to *auto*.
        public var numTicks: Int?
    
        /// Sets the values at which ticks on this axis appear. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `ticktext`.
        public var tickValues: [Double]?
    
        /// Sets the text displayed at the ticks position via `tickvals`. 
        ///
        /// Only has an effect if `tickmode` is set to *array*. Used with `tickvals`.
        public var tickText: [Double]?
    
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        /// - traces/carpet/attributes/aaxis/showticklabels
        /// - traces/carpet/attributes/baxis/showticklabels
        public enum ShowTickLabels: String, Encodable {
            case start
            case end
            case both
            case none
        }
        /// Determines whether axis labels are drawn on the low side, the high side, both, or neither side of the axis.
        public var showTickLabels: ShowTickLabels?
    
        /// Sets the tick font.
        /// - traces/carpet/attributes/baxis/tickfont
        public struct TickFont: Encodable {
            /// HTML font family - the typeface that will be applied by the web browser. 
            ///
            /// The web browser will only be able to apply a font if it is available on the system which it
            /// operates. Provide multiple font families, separated by commas, to indicate the preference in
            /// which to apply fonts if they aren't available on the system. The plotly service (at
            /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
            /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
            /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
            /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
            public var family: String?
        
            public var size: Double?
        
            public var color: Color?
        
            public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                self.family = family
                self.size = size
                self.color = color
            }
        }
        /// Sets the tick font.
        public var tickFont: TickFont?
    
        /// Sets the angle of the tick labels with respect to the horizontal. 
        ///
        /// For example, a `tickangle` of -90 draws the tick labels vertically.
        public var tickAngle: Angle?
    
        /// Sets a tick label prefix.
        public var tickPrefix: String?
    
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        /// - layout/layoutAttributes/coloraxis/colorbar/showtickprefix
        /// - layout/layoutAttributes/polar/angularaxis/showtickprefix
        /// - layout/layoutAttributes/polar/radialaxis/showtickprefix
        /// - layout/layoutAttributes/scene/xaxis/showtickprefix
        /// - layout/layoutAttributes/scene/yaxis/showtickprefix
        /// - layout/layoutAttributes/scene/zaxis/showtickprefix
        /// - layout/layoutAttributes/ternary/aaxis/showtickprefix
        /// - layout/layoutAttributes/ternary/baxis/showtickprefix
        /// - layout/layoutAttributes/ternary/caxis/showtickprefix
        /// - layout/layoutAttributes/xaxis/showtickprefix
        /// - layout/layoutAttributes/yaxis/showtickprefix
        /// - traces/bar/attributes/marker/colorbar/showtickprefix
        /// - traces/barpolar/attributes/marker/colorbar/showtickprefix
        /// - traces/carpet/attributes/aaxis/showtickprefix
        /// - traces/carpet/attributes/baxis/showtickprefix
        /// - traces/choropleth/attributes/colorbar/showtickprefix
        /// - traces/cone/attributes/colorbar/showtickprefix
        /// - traces/contourcarpet/attributes/colorbar/showtickprefix
        /// - traces/densitymapbox/attributes/colorbar/showtickprefix
        /// - traces/funnel/attributes/marker/colorbar/showtickprefix
        /// - traces/heatmapgl/attributes/colorbar/showtickprefix
        /// - traces/histogram/attributes/marker/colorbar/showtickprefix
        /// - traces/histogram2d/attributes/colorbar/showtickprefix
        /// - traces/histogram2dcontour/attributes/colorbar/showtickprefix
        /// - traces/mesh3d/attributes/colorbar/showtickprefix
        /// - traces/parcats/attributes/line/colorbar/showtickprefix
        /// - traces/parcoords/attributes/line/colorbar/showtickprefix
        /// - traces/scatter3d/attributes/line/colorbar/showtickprefix
        /// - traces/scatter3d/attributes/marker/colorbar/showtickprefix
        /// - traces/scattercarpet/attributes/marker/colorbar/showtickprefix
        /// - traces/scattergeo/attributes/marker/colorbar/showtickprefix
        /// - traces/scattermapbox/attributes/marker/colorbar/showtickprefix
        /// - traces/scatterpolar/attributes/marker/colorbar/showtickprefix
        /// - traces/scatterpolargl/attributes/marker/colorbar/showtickprefix
        /// - traces/scatterternary/attributes/marker/colorbar/showtickprefix
        /// - traces/splom/attributes/marker/colorbar/showtickprefix
        /// - traces/streamtube/attributes/colorbar/showtickprefix
        /// - traces/sunburst/attributes/marker/colorbar/showtickprefix
        /// - traces/surface/attributes/colorbar/showtickprefix
        /// - traces/volume/attributes/colorbar/showtickprefix
        public enum ShowTickPrefix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all tick labels are displayed with a prefix. 
        ///
        /// If *first*, only the first tick is displayed with a prefix. If *last*, only the last tick is
        /// displayed with a suffix. If *none*, tick prefixes are hidden.
        public var showTickPrefix: ShowTickPrefix?
    
        /// Sets a tick label suffix.
        public var tickSuffix: String?
    
        /// Same as `showtickprefix` but for tick suffixes.
        /// - layout/layoutAttributes/coloraxis/colorbar/showticksuffix
        /// - layout/layoutAttributes/polar/angularaxis/showticksuffix
        /// - layout/layoutAttributes/polar/radialaxis/showticksuffix
        /// - layout/layoutAttributes/scene/xaxis/showticksuffix
        /// - layout/layoutAttributes/scene/yaxis/showticksuffix
        /// - layout/layoutAttributes/scene/zaxis/showticksuffix
        /// - layout/layoutAttributes/ternary/aaxis/showticksuffix
        /// - layout/layoutAttributes/ternary/baxis/showticksuffix
        /// - layout/layoutAttributes/ternary/caxis/showticksuffix
        /// - layout/layoutAttributes/xaxis/showticksuffix
        /// - layout/layoutAttributes/yaxis/showticksuffix
        /// - traces/bar/attributes/marker/colorbar/showticksuffix
        /// - traces/barpolar/attributes/marker/colorbar/showticksuffix
        /// - traces/carpet/attributes/aaxis/showticksuffix
        /// - traces/carpet/attributes/baxis/showticksuffix
        /// - traces/choropleth/attributes/colorbar/showticksuffix
        /// - traces/cone/attributes/colorbar/showticksuffix
        /// - traces/contourcarpet/attributes/colorbar/showticksuffix
        /// - traces/densitymapbox/attributes/colorbar/showticksuffix
        /// - traces/funnel/attributes/marker/colorbar/showticksuffix
        /// - traces/heatmapgl/attributes/colorbar/showticksuffix
        /// - traces/histogram/attributes/marker/colorbar/showticksuffix
        /// - traces/histogram2d/attributes/colorbar/showticksuffix
        /// - traces/histogram2dcontour/attributes/colorbar/showticksuffix
        /// - traces/mesh3d/attributes/colorbar/showticksuffix
        /// - traces/parcats/attributes/line/colorbar/showticksuffix
        /// - traces/parcoords/attributes/line/colorbar/showticksuffix
        /// - traces/scatter3d/attributes/line/colorbar/showticksuffix
        /// - traces/scatter3d/attributes/marker/colorbar/showticksuffix
        /// - traces/scattercarpet/attributes/marker/colorbar/showticksuffix
        /// - traces/scattergeo/attributes/marker/colorbar/showticksuffix
        /// - traces/scattermapbox/attributes/marker/colorbar/showticksuffix
        /// - traces/scatterpolar/attributes/marker/colorbar/showticksuffix
        /// - traces/scatterpolargl/attributes/marker/colorbar/showticksuffix
        /// - traces/scatterternary/attributes/marker/colorbar/showticksuffix
        /// - traces/splom/attributes/marker/colorbar/showticksuffix
        /// - traces/streamtube/attributes/colorbar/showticksuffix
        /// - traces/sunburst/attributes/marker/colorbar/showticksuffix
        /// - traces/surface/attributes/colorbar/showticksuffix
        /// - traces/volume/attributes/colorbar/showticksuffix
        public enum ShowTickSuffix: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// Same as `showtickprefix` but for tick suffixes.
        public var showTickSuffix: ShowTickSuffix?
    
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        /// - layout/layoutAttributes/coloraxis/colorbar/showexponent
        /// - layout/layoutAttributes/polar/angularaxis/showexponent
        /// - layout/layoutAttributes/polar/radialaxis/showexponent
        /// - layout/layoutAttributes/scene/xaxis/showexponent
        /// - layout/layoutAttributes/scene/yaxis/showexponent
        /// - layout/layoutAttributes/scene/zaxis/showexponent
        /// - layout/layoutAttributes/ternary/aaxis/showexponent
        /// - layout/layoutAttributes/ternary/baxis/showexponent
        /// - layout/layoutAttributes/ternary/caxis/showexponent
        /// - layout/layoutAttributes/xaxis/showexponent
        /// - layout/layoutAttributes/yaxis/showexponent
        /// - traces/bar/attributes/marker/colorbar/showexponent
        /// - traces/barpolar/attributes/marker/colorbar/showexponent
        /// - traces/carpet/attributes/aaxis/showexponent
        /// - traces/carpet/attributes/baxis/showexponent
        /// - traces/choropleth/attributes/colorbar/showexponent
        /// - traces/cone/attributes/colorbar/showexponent
        /// - traces/contourcarpet/attributes/colorbar/showexponent
        /// - traces/densitymapbox/attributes/colorbar/showexponent
        /// - traces/funnel/attributes/marker/colorbar/showexponent
        /// - traces/heatmapgl/attributes/colorbar/showexponent
        /// - traces/histogram/attributes/marker/colorbar/showexponent
        /// - traces/histogram2d/attributes/colorbar/showexponent
        /// - traces/histogram2dcontour/attributes/colorbar/showexponent
        /// - traces/mesh3d/attributes/colorbar/showexponent
        /// - traces/parcats/attributes/line/colorbar/showexponent
        /// - traces/parcoords/attributes/line/colorbar/showexponent
        /// - traces/scatter3d/attributes/line/colorbar/showexponent
        /// - traces/scatter3d/attributes/marker/colorbar/showexponent
        /// - traces/scattercarpet/attributes/marker/colorbar/showexponent
        /// - traces/scattergeo/attributes/marker/colorbar/showexponent
        /// - traces/scattermapbox/attributes/marker/colorbar/showexponent
        /// - traces/scatterpolar/attributes/marker/colorbar/showexponent
        /// - traces/scatterpolargl/attributes/marker/colorbar/showexponent
        /// - traces/scatterternary/attributes/marker/colorbar/showexponent
        /// - traces/splom/attributes/marker/colorbar/showexponent
        /// - traces/streamtube/attributes/colorbar/showexponent
        /// - traces/sunburst/attributes/marker/colorbar/showexponent
        /// - traces/surface/attributes/colorbar/showexponent
        /// - traces/volume/attributes/colorbar/showexponent
        public enum ShowExponent: String, Encodable {
            case all
            case first
            case last
            case none
        }
        /// If *all*, all exponents are shown besides their significands. 
        ///
        /// If *first*, only the exponent of the first tick is shown. If *last*, only the exponent of the
        /// last tick is shown. If *none*, no exponents appear.
        public var showExponent: ShowExponent?
    
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        /// - layout/layoutAttributes/coloraxis/colorbar/exponentformat
        /// - layout/layoutAttributes/polar/angularaxis/exponentformat
        /// - layout/layoutAttributes/polar/radialaxis/exponentformat
        /// - layout/layoutAttributes/scene/xaxis/exponentformat
        /// - layout/layoutAttributes/scene/yaxis/exponentformat
        /// - layout/layoutAttributes/scene/zaxis/exponentformat
        /// - layout/layoutAttributes/ternary/aaxis/exponentformat
        /// - layout/layoutAttributes/ternary/baxis/exponentformat
        /// - layout/layoutAttributes/ternary/caxis/exponentformat
        /// - layout/layoutAttributes/xaxis/exponentformat
        /// - layout/layoutAttributes/yaxis/exponentformat
        /// - traces/bar/attributes/marker/colorbar/exponentformat
        /// - traces/barpolar/attributes/marker/colorbar/exponentformat
        /// - traces/carpet/attributes/aaxis/exponentformat
        /// - traces/carpet/attributes/baxis/exponentformat
        /// - traces/choropleth/attributes/colorbar/exponentformat
        /// - traces/cone/attributes/colorbar/exponentformat
        /// - traces/contourcarpet/attributes/colorbar/exponentformat
        /// - traces/densitymapbox/attributes/colorbar/exponentformat
        /// - traces/funnel/attributes/marker/colorbar/exponentformat
        /// - traces/heatmapgl/attributes/colorbar/exponentformat
        /// - traces/histogram/attributes/marker/colorbar/exponentformat
        /// - traces/histogram2d/attributes/colorbar/exponentformat
        /// - traces/histogram2dcontour/attributes/colorbar/exponentformat
        /// - traces/mesh3d/attributes/colorbar/exponentformat
        /// - traces/parcats/attributes/line/colorbar/exponentformat
        /// - traces/parcoords/attributes/line/colorbar/exponentformat
        /// - traces/scatter3d/attributes/line/colorbar/exponentformat
        /// - traces/scatter3d/attributes/marker/colorbar/exponentformat
        /// - traces/scattercarpet/attributes/marker/colorbar/exponentformat
        /// - traces/scattergeo/attributes/marker/colorbar/exponentformat
        /// - traces/scattermapbox/attributes/marker/colorbar/exponentformat
        /// - traces/scatterpolar/attributes/marker/colorbar/exponentformat
        /// - traces/scatterpolargl/attributes/marker/colorbar/exponentformat
        /// - traces/scatterternary/attributes/marker/colorbar/exponentformat
        /// - traces/splom/attributes/marker/colorbar/exponentformat
        /// - traces/streamtube/attributes/colorbar/exponentformat
        /// - traces/sunburst/attributes/marker/colorbar/exponentformat
        /// - traces/surface/attributes/colorbar/exponentformat
        /// - traces/volume/attributes/colorbar/exponentformat
        public enum ExponentFormat: String, Encodable {
            case none
            case e
            case E
            case power
            case SI
            case B
        }
        /// Determines a formatting rule for the tick exponents. 
        ///
        /// For example, consider the number 1,000,000,000. If *none*, it appears as 1,000,000,000. If *e*,
        /// 1e+9. If *E*, 1E+9. If *power*, 1x10^9 (with 9 in a super script). If *SI*, 1G. If *B*, 1B.
        public var exponentFormat: ExponentFormat?
    
        /// If "true", even 4-digit integers are separated
        public var separatethousands: Bool?
    
        /// Sets the tick label formatting rule using d3 formatting mini-languages which are very similar to those in Python. 
        ///
        /// For numbers, see: https://github.com/d3/d3-3.x-api-reference/blob/master/Formatting.md#d3_format
        /// And for dates see: We add one item to d3's date formatter: *%{n}f* for fractional seconds with n
        /// digits. For example, *2016-10-13 09:15:23.456* with tickformat *%H~%M~%S.%2f* would display
        /// *09~15~23.46*
        public var tickFormat: String?
    
        /// - traces/carpet/attributes/baxis/tickformatstops
        public struct TickFormatStops: Encodable {
            /// - traces/carpet/attributes/baxis/tickformatstops/items
            public struct Items: Encodable {
                /// - traces/carpet/attributes/baxis/tickformatstops/items/tickformatstop
                public struct TickFormatStop: Encodable {
                    /// Determines whether or not this stop is used. 
                    ///
                    /// If `false`, this stop is ignored even within its `dtickrange`.
                    public var enabled: Bool?
                
                    /// range [*min*, *max*], where *min*, *max* - dtick values which describe some zoom level, it is possible to omit *min* or *max* value by passing *null*
                    public var dTickRange: InfoArray?
                
                    /// string - dtickformat for described zoom level, the same as *tickformat*
                    public var value: String?
                
                    /// When used in a template, named items are created in the output figure in addition to any items the figure already has in this array. 
                    ///
                    /// You can modify these items in the output figure by making your own item with `templateitemname`
                    /// matching this `name` alongside your modifications (including `visible: false` or `enabled:
                    /// false` to hide it). Has no effect outside of a template.
                    public var name: String?
                
                    /// Used to refer to a named item in this array in the template. 
                    ///
                    /// Named items from the template will be created even without a matching item in the input figure,
                    /// but you can modify one by making an item with `templateitemname` matching its `name`, alongside
                    /// your modifications (including `visible: false` or `enabled: false` to hide it). If there is no
                    /// template or no matching item, this item will be hidden unless you explicitly show it with
                    /// `visible: true`.
                    public var templateItemName: String?
                
                    public init(enabled: Bool? = nil, dTickRange: InfoArray? = nil, value: String? = nil, name: String? = nil, templateItemName: String? = nil) {
                        self.enabled = enabled
                        self.dTickRange = dTickRange
                        self.value = value
                        self.name = name
                        self.templateItemName = templateItemName
                    }
                }
                public var tickFormatStop: TickFormatStop?
            
                public init(tickFormatStop: TickFormatStop? = nil) {
                    self.tickFormatStop = tickFormatStop
                }
            }
            public var items: Items?
        
            public init(items: Items? = nil) {
                self.items = items
            }
        }
        public var tickFormatStops: TickFormatStops?
    
        /// Specifies the ordering logic for the categories in the dimension. 
        ///
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        /// - traces/carpet/attributes/aaxis/categoryorder
        /// - traces/carpet/attributes/baxis/categoryorder
        /// - traces/parcats/attributes/dimensions/items/dimension/categoryorder
        public enum CategoryOrder: String, Encodable {
            case trace
            case categoryAscending = "category ascending"
            case categoryDescending = "category descending"
            case array
        }
        /// Specifies the ordering logic for the categories in the dimension. 
        ///
        /// By default, plotly uses *trace*, which specifies the order that is present in the data supplied.
        /// Set `categoryorder` to *category ascending* or *category descending* if order should be
        /// determined by the alphanumerical order of the category names. Set `categoryorder` to *array* to
        /// derive the ordering from the attribute `categoryarray`. If a category is not found in the
        /// `categoryarray` array, the sorting behavior for that attribute will be identical to the *trace*
        /// mode. The unspecified categories will follow the categories in `categoryarray`.
        public var categoryOrder: CategoryOrder?
    
        /// Sets the order in which categories on this axis appear. 
        ///
        /// Only has an effect if `categoryorder` is set to *array*. Used with `categoryorder`.
        public var categoryArray: [Double]?
    
        /// Extra padding between label and the axis
        public var labelPadding: Int?
    
        /// Sets a axis label prefix.
        public var labelPrefix: String?
    
        /// Sets a axis label suffix.
        public var labelSuffix: String?
    
        /// Determines whether or not a line bounding this axis is drawn.
        public var showLine: Bool?
    
        /// Sets the axis line color.
        public var lineColor: Color?
    
        /// Sets the width (in px) of the axis line.
        public var lineWidth: Double?
    
        /// Sets the axis line color.
        public var gridColor: Color?
    
        /// Sets the width (in px) of the axis line.
        public var gridWidth: Double?
    
        /// Determines whether or not grid lines are drawn. 
        ///
        /// If *true*, the grid lines are drawn at every tick mark.
        public var showGrid: Bool?
    
        /// Sets the number of minor grid ticks per major grid tick
        public var minorGridCount: Int?
    
        /// Sets the width (in px) of the grid lines.
        public var minorGridWidth: Double?
    
        /// Sets the color of the grid lines.
        public var minorGridColor: Color?
    
        /// Determines whether or not a line is drawn at along the starting value of this axis. 
        ///
        /// If *true*, the start line is drawn on top of the grid lines.
        public var startLine: Bool?
    
        /// Sets the line color of the start line.
        public var startLineColor: Color?
    
        /// Sets the width (in px) of the start line.
        public var startLineWidth: Double?
    
        /// Determines whether or not a line is drawn at along the final value of this axis. 
        ///
        /// If *true*, the end line is drawn on top of the grid lines.
        public var endLine: Bool?
    
        /// Sets the width (in px) of the end line.
        public var endLineWidth: Double?
    
        /// Sets the line color of the end line.
        public var endLineColor: Color?
    
        /// The starting index of grid lines along the axis
        public var tick0: Double?
    
        /// The stride between grid lines along the axis
        public var dTick: Double?
    
        /// The starting index of grid lines along the axis
        public var arrayTick0: Int?
    
        /// The stride between grid lines along the axis
        public var arraydTick: Int?
    
        /// - traces/carpet/attributes/baxis/_deprecated
        public struct Deprecated: Encodable {
            /// Deprecated in favor of `title.text`. 
            ///
            /// Note that value of `title` is no longer a simple *string* but a set of sub-attributes.
            public var title: String?
        
            /// Deprecated in favor of `title.font`.
            /// - traces/carpet/attributes/baxis/_deprecated/titlefont
            public struct TitleFont: Encodable {
                /// HTML font family - the typeface that will be applied by the web browser. 
                ///
                /// The web browser will only be able to apply a font if it is available on the system which it
                /// operates. Provide multiple font families, separated by commas, to indicate the preference in
                /// which to apply fonts if they aren't available on the system. The plotly service (at
                /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
                /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
                /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
                /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
                public var family: String?
            
                public var size: Double?
            
                public var color: Color?
            
                public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
                    self.family = family
                    self.size = size
                    self.color = color
                }
            }
            /// Deprecated in favor of `title.font`.
            public var titleFont: TitleFont?
        
            /// Deprecated in favor of `title.offset`.
            public var titleOffset: Double?
        
            public init(title: String? = nil, titleFont: TitleFont? = nil, titleOffset: Double? = nil) {
                self.title = title
                self.titleFont = titleFont
                self.titleOffset = titleOffset
            }
        }
        public var deprecated: Deprecated?
    
        /// Sets the source reference on plot.ly for  tickvals .
        public var tickValuesSource: String?
    
        /// Sets the source reference on plot.ly for  ticktext .
        public var tickTextSource: String?
    
        /// Sets the source reference on plot.ly for  categoryarray .
        public var categoryArraySource: String?
    
        public init(color: Color? = nil, smoothing: Double? = nil, title: Title? = nil, type: Rule? = nil, autoRange: AutoRange? = nil, rangeMode: RangeMode? = nil, range: InfoArray? = nil, fixedRange: Bool? = nil, cheaterType: CheaterType? = nil, tickMode: TickMode? = nil, numTicks: Int? = nil, tickValues: [Double]? = nil, tickText: [Double]? = nil, showTickLabels: ShowTickLabels? = nil, tickFont: TickFont? = nil, tickAngle: Angle? = nil, tickPrefix: String? = nil, showTickPrefix: ShowTickPrefix? = nil, tickSuffix: String? = nil, showTickSuffix: ShowTickSuffix? = nil, showExponent: ShowExponent? = nil, exponentFormat: ExponentFormat? = nil, separatethousands: Bool? = nil, tickFormat: String? = nil, tickFormatStops: TickFormatStops? = nil, categoryOrder: CategoryOrder? = nil, categoryArray: [Double]? = nil, labelPadding: Int? = nil, labelPrefix: String? = nil, labelSuffix: String? = nil, showLine: Bool? = nil, lineColor: Color? = nil, lineWidth: Double? = nil, gridColor: Color? = nil, gridWidth: Double? = nil, showGrid: Bool? = nil, minorGridCount: Int? = nil, minorGridWidth: Double? = nil, minorGridColor: Color? = nil, startLine: Bool? = nil, startLineColor: Color? = nil, startLineWidth: Double? = nil, endLine: Bool? = nil, endLineWidth: Double? = nil, endLineColor: Color? = nil, tick0: Double? = nil, dTick: Double? = nil, arrayTick0: Int? = nil, arraydTick: Int? = nil, deprecated: Deprecated? = nil, tickValuesSource: String? = nil, tickTextSource: String? = nil, categoryArraySource: String? = nil) {
            self.color = color
            self.smoothing = smoothing
            self.title = title
            self.type = type
            self.autoRange = autoRange
            self.rangeMode = rangeMode
            self.range = range
            self.fixedRange = fixedRange
            self.cheaterType = cheaterType
            self.tickMode = tickMode
            self.numTicks = numTicks
            self.tickValues = tickValues
            self.tickText = tickText
            self.showTickLabels = showTickLabels
            self.tickFont = tickFont
            self.tickAngle = tickAngle
            self.tickPrefix = tickPrefix
            self.showTickPrefix = showTickPrefix
            self.tickSuffix = tickSuffix
            self.showTickSuffix = showTickSuffix
            self.showExponent = showExponent
            self.exponentFormat = exponentFormat
            self.separatethousands = separatethousands
            self.tickFormat = tickFormat
            self.tickFormatStops = tickFormatStops
            self.categoryOrder = categoryOrder
            self.categoryArray = categoryArray
            self.labelPadding = labelPadding
            self.labelPrefix = labelPrefix
            self.labelSuffix = labelSuffix
            self.showLine = showLine
            self.lineColor = lineColor
            self.lineWidth = lineWidth
            self.gridColor = gridColor
            self.gridWidth = gridWidth
            self.showGrid = showGrid
            self.minorGridCount = minorGridCount
            self.minorGridWidth = minorGridWidth
            self.minorGridColor = minorGridColor
            self.startLine = startLine
            self.startLineColor = startLineColor
            self.startLineWidth = startLineWidth
            self.endLine = endLine
            self.endLineWidth = endLineWidth
            self.endLineColor = endLineColor
            self.tick0 = tick0
            self.dTick = dTick
            self.arrayTick0 = arrayTick0
            self.arraydTick = arraydTick
            self.deprecated = deprecated
            self.tickValuesSource = tickValuesSource
            self.tickTextSource = tickTextSource
            self.categoryArraySource = categoryArraySource
        }
    }
    public var bAxis: BAxis?

    /// The default font used for axis & tick labels on this carpet
    /// - traces/carpet/attributes/font
    public struct Font: Encodable {
        /// HTML font family - the typeface that will be applied by the web browser. 
        ///
        /// The web browser will only be able to apply a font if it is available on the system which it
        /// operates. Provide multiple font families, separated by commas, to indicate the preference in
        /// which to apply fonts if they aren't available on the system. The plotly service (at
        /// https://plot.ly or on-premise) generates images on a server, where only a select number of fonts
        /// are installed and supported. These include *Arial*, *Balto*, *Courier New*, *Droid Sans*,,
        /// *Droid Serif*, *Droid Sans Mono*, *Gravitas One*, *Old Standard TT*, *Open Sans*, *Overpass*,
        /// *PT Sans Narrow*, *Raleway*, *Times New Roman*.
        public var family: String?
    
        public var size: Double?
    
        public var color: Color?
    
        public init(family: String? = nil, size: Double? = nil, color: Color? = nil) {
            self.family = family
            self.size = size
            self.color = color
        }
    }
    /// The default font used for axis & tick labels on this carpet
    public var font: Font?

    /// Sets default for all colors associated with this axis all at once: line, font, tick, and grid colors. 
    ///
    /// Grid color is lightened by blending this with the plot background Individual pieces can override
    /// this.
    public var color: Color?

    /// Sets a reference between this trace's x coordinates and a 2D cartesian x axis. 
    ///
    /// If *x* (the default value), the x coordinates refer to `layout.xaxis`. If *x2*, the x
    /// coordinates refer to `layout.xaxis2`, and so on.
    public var xAxis: SubPlotID?

    /// Sets a reference between this trace's y coordinates and a 2D cartesian y axis. 
    ///
    /// If *y* (the default value), the y coordinates refer to `layout.yaxis`. If *y2*, the y
    /// coordinates refer to `layout.yaxis2`, and so on.
    public var yAxis: SubPlotID?

    /// Sets the source reference on plot.ly for  ids .
    public var idsSource: String?

    /// Sets the source reference on plot.ly for  customdata .
    public var customDataSource: String?

    /// Sets the source reference on plot.ly for  meta .
    public var metaSource: String?

    /// Sets the source reference on plot.ly for  x .
    public var xSource: String?

    /// Sets the source reference on plot.ly for  y .
    public var ySource: String?

    /// Sets the source reference on plot.ly for  a .
    public var aSource: String?

    /// Sets the source reference on plot.ly for  b .
    public var bSource: String?

    public init(visible: Visible? = nil, opacity: Double? = nil, name: String? = nil, uid: String? = nil, ids: [Double]? = nil, customData: [Double]? = nil, meta: Anything? = nil, stream: Stream? = nil, uiRevision: Anything? = nil, carpet: String? = nil, x: [Double]? = nil, y: [Double]? = nil, a: [Double]? = nil, a0: Double? = nil, da: Double? = nil, b: [Double]? = nil, b0: Double? = nil, db: Double? = nil, cheaterSlope: Double? = nil, aAxis: AAxis? = nil, bAxis: BAxis? = nil, font: Font? = nil, color: Color? = nil, xAxis: SubPlotID? = nil, yAxis: SubPlotID? = nil, idsSource: String? = nil, customDataSource: String? = nil, metaSource: String? = nil, xSource: String? = nil, ySource: String? = nil, aSource: String? = nil, bSource: String? = nil) {
        self.visible = visible
        self.opacity = opacity
        self.name = name
        self.uid = uid
        self.ids = ids
        self.customData = customData
        self.meta = meta
        self.stream = stream
        self.uiRevision = uiRevision
        self.carpet = carpet
        self.x = x
        self.y = y
        self.a = a
        self.a0 = a0
        self.da = da
        self.b = b
        self.b0 = b0
        self.db = db
        self.cheaterSlope = cheaterSlope
        self.aAxis = aAxis
        self.bAxis = bAxis
        self.font = font
        self.color = color
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.idsSource = idsSource
        self.customDataSource = customDataSource
        self.metaSource = metaSource
        self.xSource = xSource
        self.ySource = ySource
        self.aSource = aSource
        self.bSource = bSource
    }
}