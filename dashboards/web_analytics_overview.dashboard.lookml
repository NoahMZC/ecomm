- dashboard: '1___'
  title: 1_웹페이지 접속자 분석
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  query_timezone: user_timezone
  preferred_slug: 2VgEQ4QWmU1qoZFiFsSd3K
  embed_style:
    background_color: ''
    show_title: true
    title_color: "#131414"
    show_filters_bar: true
    tile_text_color: "#070808"
    text_tile_text_color: "#0d0d0c"
  elements:
  - title: Total Visitors
    name: Total Visitors
    model: looker_demo_thelook
    explore: events
    type: single_value
    fields: [events.unique_visitors, events.event_week]
    filters:
      events.event_date: 2 weeks ago for 2 weeks
    sorts: [events.event_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "${events.unique_visitors}-offset(${events.unique_visitors},1)"}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 이번주 방문자 수 /
    value_format: ''
    comparison_label: 전주대비 증감
    font_size: medium
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Total Converted Visitors
    name: Total Converted Visitors
    model: looker_demo_thelook
    explore: order_items
    type: single_value
    fields: [users.count]
    sorts: [users.count desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 총 가입자 수
    font_size: medium
    text_color: black
    defaults_version: 1
    listen:
      유입 경로: users.traffic_source
      기간: order_items.created_date
    row: 2
    col: 11
    width: 5
    height: 3
  - title: Total Profit
    name: Total Profit
    model: looker_demo_thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters: {}
    sorts: [orders.total_profit_k desc, order_items.total_sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 총 판매액
    value_format: "$#,###"
    font_size: medium
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    color_palette: Default
    defaults_version: 1
    note_state: expanded
    note_display: below
    note_text: ''
    listen:
      유입 경로: users.traffic_source
      기간: order_items.created_date
    row: 2
    col: 6
    width: 5
    height: 3
  - title: 접속한 웹 브라우저 비율
    name: 접속한 웹 브라우저 비율
    model: looker_demo_thelook
    explore: events
    type: looker_pie
    fields: [events.browser, events.count]
    filters: {}
    sorts: [events.count desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    colors: ["#635189", "#8D7FB9", "#EA8A2F", "#e9b404", "#49cec1", "#a2dcf3", "#1ea8df",
      "#7F7977"]
    series_colors:
      Chrome: "#5245ed"
      Safari: "#a2dcf3"
      Firefox: "#776fdf"
      IE: "#1ea8df"
      Other: "#49cec1"
    show_null_labels: false
    show_view_names: true
    note_state: collapsed
    note_display: above
    note_text: "※ '접속 브라우저' 필터는 적용되지 않습니다."
    listen:
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 12
    col: 16
    width: 8
    height: 8
  - title: 홈페이지 접속 시간
    name: 홈페이지 접속 시간
    model: looker_demo_thelook
    explore: events
    type: looker_bar
    fields: [sessions.duration_seconds_tier, sessions.count]
    filters: {}
    sorts: [sessions.duration_seconds_tier]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: 홈페이지 접속 수, orientation: bottom, series: [{axisId: sessions.count,
            id: sessions.count, name: Sessions Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    y_axis_labels: [Number of Sessions]
    x_axis_label: Session Duration in Seconds
    colors: ["#8D7FB9"]
    series_types: {}
    series_colors:
      sessions.count: "#5245ed"
    x_axis_label_rotation: -45
    show_dropoff: false
    defaults_version: 1
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 2
    col: 16
    width: 8
    height: 10
  - title: 홈페이지 구역 별 페이지 종료 비율
    name: 홈페이지 구역 별 페이지 종료 비율
    model: looker_demo_thelook
    explore: sessions
    type: looker_column
    fields: [events.event_type, events.bounce_rate, sessions.count]
    filters:
      events.event_type: "-Purchase,-Login,-Register,-History,-Cancel,-Return"
      sessions.session_start_date: 7 days
    sorts: [sessions.count desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 10
    x_axis_scale: auto
    y_axis_combined: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ["#a2dcf3", "#64518A", "#8D7FB9"]
    series_types:
      events.bounce_rate: line
    series_colors:
      sessions.count: "#1ea8df"
    series_labels:
      events.bounce_rate: 해당 페이지에서의 종료 비율
      events.count: Number of Page Views
      sessions.count: 홈페이지 구역 별 접속 수
    y_axis_orientation: [left, right]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 20
    col: 0
    width: 12
    height: 7
  - title: TOP 10 브랜드
    name: TOP 10 브랜드
    model: looker_demo_thelook
    explore: events
    type: table
    fields: [product_viewed.brand, events.count, events.unique_visitors, sessions.count_purchase,
      sessions.cart_to_checkout_conversion]
    filters:
      product_viewed.brand: "-NULL"
    sorts: [events.count desc]
    limit: 10
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      events.count: 페이지 수
      product_viewed.brand: 브랜드 명
      events.unique_visitors: 고유 방문객 수
      sessions.count_purchase: 구매량
      sessions.cart_to_checkout_conversion: 장바구니 속 비율
    show_value_labels: true
    show_null_labels: false
    stacking: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_combined: true
    y_axis_labels: [Total Pageviews]
    x_axis_label: Brand Name
    label_density: 25
    legend_position: center
    ordering: none
    colors: ["#64518A", "#8D7FB9"]
    hide_legend: false
    show_dropoff: false
    defaults_version: 1
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 20
    col: 12
    width: 12
    height: 7
  - title: 퍼널(Funnel) 분석
    name: 퍼널(Funnel) 분석
    model: looker_demo_thelook
    explore: sessions
    type: looker_column
    fields: [sessions.all_sessions, sessions.count_browse_or_later, sessions.count_product_or_later,
      sessions.count_cart_or_later, sessions.count_purchase]
    filters: {}
    sorts: [sessions.all_sessions desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: ''
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    series_types: {}
    series_labels:
      sessions.all_sessions: "(1) 총 방문 수"
      sessions.count_purchase: "(5) 실 구매"
      sessions.count_cart_or_later: "(4) 장바구니 담기"
      sessions.count_product_or_later: "(3) 상품 확인"
      sessions.count_browse_or_later: "(2) 제품 검색"
    show_dropoff: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: Sessions
    barColors: ["#5245ed", "#49cec1"]
    smoothedBars: true
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: sessions.session_start_date
    row: 5
    col: 0
    width: 11
    height: 7
  - title: 접속 위치
    name: 접속 위치
    model: looker_demo_thelook
    explore: events
    type: looker_map
    fields: [events.approx_location, events.count]
    filters: {}
    sorts: [events.count desc]
    limit: 1000
    query_timezone: America/Los_Angeles
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    map: world
    map_projection: ''
    quantize_colors: false
    colors: [whitesmoke, "#64518A"]
    outer_border_color: grey
    inner_border_color: lightgrey
    map_pannable: true
    map_zoomable: true
    map_marker_color: ["#1ea8df"]
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 12
    col: 0
    width: 16
    height: 8
  - title: 일별 접속자 수 및 구매 비율
    name: 일별 접속자 수 및 구매 비율
    model: looker_demo_thelook
    explore: sessions
    type: looker_line
    fields: [sessions.session_start_date, sessions.count, sessions.overall_conversion]
    sorts: [sessions.session_start_date]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: false
    show_null_points: true
    interpolation: monotone
    hide_legend: false
    colors: ["#5245ed", "#1ea8df", "#353b49", "#49cec1", "#b3a0dd", "#db7f2a", "#706080",
      "#a2dcf3", "#776fdf", "#e9b404", "#635189"]
    series_labels:
      sessions.count: 접속 수
      sessions.overall_conversion: 구매 비율
    y_axis_orientation: [left, right]
    discontinuous_nulls: false
    show_row_numbers: true
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 27
    col: 0
    width: 24
    height: 9
  - title: 홈페이지 방문/구매 비율
    name: 홈페이지 방문/구매 비율
    model: looker_demo_thelook
    explore: sessions
    type: looker_pie
    fields: [sessions.includes_purchase, sessions.count]
    filters:
      sessions.session_start_date: 7 days
    sorts: [sessions.all_sessions desc, sessions.includes_purchase]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    colors: ["#5245ed", "#a2dcf3"]
    series_colors: {}
    series_labels:
      'No': 미 구매
      'Yes': 구매
    show_view_names: true
    show_row_numbers: true
    ordering: none
    show_null_labels: false
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    point_style: circle_outline
    interpolation: linear
    discontinuous_nulls: false
    show_null_points: true
    series_types:
      users.count: column
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: 고유 방문객 수 비례 구매 비율
    listen:
      접속 브라우저: events.browser
      유입 경로: users.traffic_source
      기간: events.event_date
    row: 5
    col: 11
    width: 5
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;"
       href="/dashboards/looker_demo_thelook::1___?%EC%A0%91%EC%86%8D+%EB%B8%8C%EB%9D%BC%EC%9A%B0%EC%A0%80=Chrome&%EC%9C%A0%EC%9E%85+%EA%B2%BD%EB%A1%9C=Search&%EA%B8%B0%EA%B0%84=2+weeks">1_웹페이지 접속자 분석</a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"  href="https://megazonepartner.cloud.looker.com/dashboards/Looker_Demo_retail_block_model::group_overview_ko?%EA%B8%B0%EA%B0%84=7+days">2_매장 판매 현황</a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"  href="dashboards/Looker_Demo_retail_block_model::item_affinity_analysis_ko?Product+Level=product&Analysis+Timeframe=90+days&Focus+Product=&Focus+Category=&Minimum+Purchase+Frequency=%3E%3D0.005">3_제품 판매 현황</a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"   href="/dashboards/Looker_Demo_call_center::agent_performance?Agent=Tonya+Koop">4_상담원 평가</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: 접속 브라우저
    title: 접속 브라우저
    type: field_filter
    default_value: Chrome
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker_demo_thelook
    explore: events
    listens_to_filters: []
    field: events.browser
  - name: 유입 경로
    title: 유입 경로
    type: field_filter
    default_value: Search
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: looker_demo_thelook
    explore: events
    listens_to_filters: []
    field: users.traffic_source
  - name: 기간
    title: 기간
    type: date_filter
    default_value: 2 weeks
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
