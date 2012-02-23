<div id="sidebar">

        <h3>Profile</h3>

            <dl>
                <dt>User</dt>
                <dd>
                       ddd
                </dd>
            </dl>
                dddd

        <h3>Stats</h3>

            <!-- Follower counts -->
            <dl>

                <dt>Posts</dt>
                <dd>${postCount}</dd>
            </dl>

        <h3>Mates</h3>
        
            <!-- People I am following -->
            
            <div id="friendsThumbnails">
                <g:each var="followUser" in="${xxx}">
                    <img src="<g:createLink action="tiny" controller="image" id="4"/>" alt="${xxxxx}"/>
                </g:each>
            </div>
            
            
<%--
    <div id="friendsThumbnails2">
                <g:each var="followUser" in="${following}">
                    <gui:toolTip text="${followUser.userId}">
                        <h:tinyThumbnail userId="${followUser.userId}"/>
                    </gui:toolTip>   
                </g:each>
            </div>

--%>


</div>
