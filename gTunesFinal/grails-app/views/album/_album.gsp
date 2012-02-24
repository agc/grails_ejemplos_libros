<div id="album${album.id}" class="album" style="display:none;">
	<div class="albumArt">
		<music:albumArt artist="${artist}" album="${album}" />
	</div>
	<div class="albumDetails">
		<div class="artistName">${artist.name}</div>
		<div class="albumTitle">${album.title}</div>
		<div class="albumInfo">
			Genre: ${album.genre ?: 'Other'}<br>
			Year: ${album.year}<br>
			<strong>Price: $ ${album.price}</strong>
		</div>
		<div class="albumTracks">
			<ol>
				<g:each in="${album.songs?}" var="song">
					<li>${song.title}</li>
				</g:each>
			</ol>
		</div>
		<div class="albumLinks">
			<g:remoteLink controller="artist" action="display" id="${artist.id}" update="musicPanel">More from this artist</g:remoteLink><br>
			<g:if test="${album.genre}">
				<g:remoteLink controller="store" action="search" params="[q:'+genre:'+album.genre]" update="musicPanel">Other albums you might like</g:remoteLink><br>							
			</g:if>
			<div id="buttons" style="float:right;">
				<g:link controller="store" action="buy" id="${album.id}"><img src="${createLinkTo(dir:'images',file:'buy-button.gif')}" border="0"></g:link>				
			</div>
		</div>
	</div>
</div>
<g:javascript>
	Effect.Appear($('album${album.id}'))
</g:javascript>