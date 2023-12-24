<ncl id="trabalhoBaixoNivel">
	<head>
		<connectorBase id="connBaseId">
			<importBase alias="conn" documentURI="defaultConnBase.ncl">
			</importBase>
			<causalConnector id="onKeySelectionSetN">
				<connectorParam name="KeyCode">
				</connectorParam>
				<simpleCondition key="$KeyCode" role="onSelection">
				</simpleCondition>
				<connectorParam name="var">
				</connectorParam>
				<simpleAction max="unbounded" qualifier="par" role="set" value="$var">
				</simpleAction>
			</causalConnector>
			<causalConnector id="onEndSetStopN">
				<connectorParam name="bounds">
				</connectorParam>
				<simpleCondition role="onEnd">
				</simpleCondition>
				<compoundAction operator="seq">
					<simpleAction role="set" value="$bounds">
					</simpleAction>
					<simpleAction max="unbounded" qualifier="par" role="stop">
					</simpleAction>
				</compoundAction>
			</causalConnector>
		</connectorBase>
		<descriptorBase id="descriptorBase1">
			<descriptor id="dVermelho" region="bVermelho">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="true">
				</descriptorParam>
			</descriptor>
			<descriptor id="dVerde" region="bVerde">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="true">
				</descriptorParam>
			</descriptor>
			<descriptor id="dAmarelo" region="bAmarelo">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="true">
				</descriptorParam>
			</descriptor>
			<descriptor id="dAzul" region="bAzul">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="true">
				</descriptorParam>
			</descriptor>
			<descriptor id="m1" region="conteudo">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="false">
				</descriptorParam>
			</descriptor>
			<descriptor id="m2" region="conteudo">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="false">
				</descriptorParam>
			</descriptor>
			<descriptor id="m3" region="conteudo">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="false">
				</descriptorParam>
			</descriptor>
			<descriptor id="m4" region="conteudo">
				<descriptorParam name="soundLevel" value="0">
				</descriptorParam>
				<descriptorParam name="visible" value="false">
				</descriptorParam>
			</descriptor>
		</descriptorBase>
		<regionBase id="rgbase">
			<region height="100.00%" id="conteudo" left="0.00%" top="0.00%" width="100.00%" zIndex="1">
				<region height="25.00%" id="bVermelho" left="0.00%" top="75.00%" width="25.00%" zIndex="2">
				</region>
				<region height="25.00%" id="bVerde" left="25.06%" top="75.00%" width="25.00%" zIndex="2">
				</region>
				<region height="25.00%" id="bAmarelo" left="50.12%" top="75.00%" width="25.00%" zIndex="2">
				</region>
				<region height="25.00%" id="bAzul" left="74.94%" top="75.00%" width="25.00%" zIndex="2">
				</region>
			</region>
		</regionBase>
	</head>
	<body id="myBodyID">

		<media descriptor="dVermelho" id="video1" instance="instSame" src="video1.mp4" type="video/mp4">
			<property name="soundLevel">
			</property>
			<property name="visible">
			</property>
		</media>
		<media descriptor="dVerde" id="video2" src="video2.mp4" type="video/mp4">
			<property name="soundLevel">
			</property>
			<property name="visible">
			</property>
		</media>
		<media descriptor="dAmarelo" id="video3" src="video3.mp4" type="video/mp4">
			<property name="soundLevel">
			</property>
			<property name="visible">
			</property>
		</media>
		<media descriptor="dAzul" id="video4" src="video4.mp4" type="video/mp4">
			<property name="soundLevel">
			</property>
			<property name="visible">
			</property>
		</media>
		<media descriptor="m1" id="media1" src="video1.mp4">
			<property name="visible">
			</property>
			<property name="soundLevel">
			</property>
		</media>
		<media descriptor="m2" id="media2" src="video2.mp4">
			<property name="visible">
			</property>
			<property name="soundLevel">
			</property>
		</media>
		<media descriptor="m3" id="media3" src="video3.mp4">
			<property name="visible">
			</property>
			<property name="soundLevel">
			</property>
		</media>
		<media descriptor="m4" id="media4" src="video4.mp4">
			<property name="visible">
			</property>
			<property name="soundLevel">
			</property>
		</media>
		

		
		<port component="video2" id="pVideo2"></port>
		<port component="video4" id="pVideo4"></port>
		<port component="video3" id="pVideo3"></port>
		<port component="video1" id="pVideo1"></port>


		<link id="l1" xconnector="conn#onBeginStart">
			<bind component="video1" role="onBegin"></bind>
			<bind component="media1" role="start"></bind>
		</link>
		<link id="l2" xconnector="conn#onBeginStart">
			<bind component="video2" role="onBegin"></bind>
			<bind component="media2" role="start"></bind>
		</link>
		<link id="l3" xconnector="conn#onBeginStart">
			<bind component="video3" role="onBegin"></bind>
			<bind component="media3" role="start"></bind>
		</link>
		<link id="l4" xconnector="conn#onBeginStart">
			<bind component="video4" role="onBegin"></bind>
			<bind component="media4" role="start"></bind>
		</link>

		<link id="linkVideo1" xconnector="onKeySelectionSetN">
			<bind component="video1" role="onSelection"></bind>

			<bind component="media1" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="media1" interface="soundLevel" role="set">
				<bindParam name="var" value="1"></bindParam>
			</bind>

			<bind component="media2" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media2" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media3" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media3" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media4" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media4" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="video1" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="video2" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video3" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video4" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>

			<bind component="media1" role="start"></bind>
		</link>

		<link id="linkVideo2" xconnector="onKeySelectionSetN">
			<bind component="video2" role="onSelection"></bind>
			
			<bind component="media2" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="media2" interface="soundLevel" role="set">
				<bindParam name="var" value="1"></bindParam>
			</bind>

			<bind component="media1" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media1" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media3" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media3" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media4" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media4" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="video2" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="video1" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video3" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video4" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>

			<bind component="media2" role="start"></bind>
		</link>

		<link id="linkVideo3" xconnector="onKeySelectionSetN">
			<bind component="video3" role="onSelection"></bind>
			
			<bind component="media3" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="media3" interface="soundLevel" role="set">
				<bindParam name="var" value="1"></bindParam>
			</bind>

			<bind component="media1" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media1" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media2" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media2" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media4" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media4" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="video3" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="video1" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video2" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video4" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>

			<bind component="media3" role="start"></bind>
		</link>

		<link id="linkVideo4" xconnector="onKeySelectionSetN">
			<bind component="video4" role="onSelection"></bind>
			
			<bind component="media4" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="media4" interface="soundLevel" role="set">
				<bindParam name="var" value="1"></bindParam>
			</bind>

			<bind component="media1" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media1" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media2" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media2" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="media3" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="media3" interface="soundLevel" role="set">
				<bindParam name="var" value="0"></bindParam>
			</bind>

			<bind component="video4" interface="visible" role="set">
				<bindParam name="var" value="false"></bindParam>
			</bind>
			<bind component="video1" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video2" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>
			<bind component="video3" interface="visible" role="set">
				<bindParam name="var" value="true"></bindParam>
			</bind>

			<bind component="media4" role="start"></bind>
		</link>
	</body>
</ncl>
