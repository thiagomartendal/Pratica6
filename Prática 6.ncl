<ncl id="myNCLDocID" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
	<head>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
			<causalConnector id="onKeySelectionStartStopAbort">
				<connectorParam name="keyCode">
				</connectorParam>
				<simpleCondition key="$keyCode" role="onSelection">
				</simpleCondition>
				<compoundAction operator="seq">
					<simpleAction max="unbounded" qualifier="par" role="start">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="abort">
					</simpleAction>
				</compoundAction>
			</causalConnector>
		</connectorBase>
		<regionBase id="regionBase0">
			<region height="100.00%" id="regiaoVideo" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
			</region>
			<region height="10.00%" id="regiaoIteratividade" left="1.29%" top="88.12%" width="5.39%" zIndex="2">
			</region>
			<region height="50.00%" id="regiaoImagem" left="25.00%" top="25.00%" width="50.00%" zIndex="3">
			</region>
		</regionBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dVideo1" region="regiaoVideo">
			</descriptor>
			<descriptor id="dInterativo" region="regiaoIteratividade">
			</descriptor>
			<descriptor id="dPaginas" region="regiaoImagem">
			</descriptor>
		</descriptorBase>
	</head>
	<body id="myBodyID">
		<media descriptor="dVideo1" id="video1" src="video1.mpg" type="video/mpeg">
		</media>
		<media descriptor="dPaginas" id="pagina1" src="pagina1.gif" type="image/gif">
		</media>
		<media descriptor="dPaginas" id="pagina2" src="pagina2.gif" type="image/gif">
		</media>
		<media descriptor="dPaginas" id="pagina3" src="pagina3.gif" type="image/gif">
		</media>
		<media descriptor="dInterativo" id="interativo" src="interat.gif" type="image/gif">
		</media>
		<port component="video1" id="port1">
		</port>
		<port component="interativo" id="port2">
		</port>
		<link id="link1" xconnector="onKeySelectionStartStopAbort">
			<bind component="interativo" role="onSelection">
				<bindParam name="keyCode" value="RED">
				</bindParam>
			</bind>
			<bind component="interativo" role="abort">
			</bind>
			<bind component="pagina1" role="start">
			</bind>
			<bind component="video1" role="stop">
			</bind>
		</link>
	</body>
</ncl>
