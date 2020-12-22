<%@ control language="C#" autoeventwireup="true" inherits="Dashboard, App_Web_dashboard.ascx.413566a5" %>
<div id="embed-api-auth-container" style="padding-top: 20px"></div>
<div id="view-selector-container" ></div>

<div class="DivMainDashBoard" id="DivMainDashBoard" style="display:none;">
    <div class="DashBoardFirstRow">
        <div class="DivSessions">
            <header class="Titles">
                <h3 class="Titles-main">Sessions</h3>
                <div class="Titles-sub">In Selected Period</div>
            </header>
            <div id="data-chart-1-container"></div>
            <div id="date-range-selector-1-container"></div>
        </div>
        <div class="DivCountriesSessions">
            <header class="Titles">
                <h3 class="Titles-main">Countries by Sessions</h3>
                <div class="Titles-sub">Last 30 days</div>
            </header>
            <div id="chart-1-container"></div>
            <div id="view-selector-1-container"></div>
        </div>
    </div>
    <div class="DashBoardSecoundRow">
        <div class="DivSessions">
            <header class="Titles">
                <h3 class="Titles-main">Top Browsers</h3>
                <div class="Titles-sub">Last 30 days</div>
            </header>
            <div id="main-chart-container"></div>
        </div>
        <div class="DivCountriesSessions">
            <header class="Titles">
                <h3 class="Titles-main">Sessions by Browser</h3>
                <div class="Titles-sub">Last 30 days</div>
            </header>
            <div id="breakdown-chart-container"></div>
        </div>
    </div>
    <div style="float:right"><a href="https://www.google.com/analytics/web/?authuser=0" target="_blank">Full Google Analytics Report </a></div>
</div>
