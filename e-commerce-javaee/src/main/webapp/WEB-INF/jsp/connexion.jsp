<%@include file="fichierEntete.jsp"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>coonnexion</title>
	<%@include file="/WEB-INF/jsp/link.jsp"%>
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>
<body>

	<form>
		<div class="row">
		    <div class="col-lg-4 col-md-4"></div>
			<div class="col-lg-4 col-md-4">
				<div id="connexion" style="margin-top: 100px;">
				   <div style="padding-left: 60px;"> 
				       <img id="id-logo-connexion" alt="mon logo" src="<c:url value="/STOCKAGE/images/logo.png"/>" style="width: 200px;"/>
				   </div>
					<div class="mb-3" style="padding-top: 30px;">
						<label for="exampleInputEmail1" class="form-label">Email</label> 
							<input type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Mot De Pass</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1">
					</div>
				
					<button type="submit" class="btn btn-primary" style="background-color: #F4672c; border-color: #F4672c;">Se Connecter</button>
					<a href="<c:url value="#"/>" style="margin-left: 200px;">S'inscrire?</a>
			    </div>
			</div>
			<div class="col-lg-4 col-md-4"></div>
		</div>
	</form>

    <%@include file="/WEB-INF/jsp/linkScript.jsp" %>
</body>
</html>