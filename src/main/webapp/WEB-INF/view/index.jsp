<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style.css">
    <title>Login Form</title>
</head>
<body>
    <div class="hero">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>    
            <h1 class="titulo">Form Login</h1>

            <form id="login" class="input-goup">
                <input type="text" class="input-field" placeholder="User Id" required>
                <input type="password" class="input-field" placeholder="Enter Password" required>
                <input type="checkbox" class="check-box"><span>Remember Password</span>
                <button type="submit" class="submit-btn">Log In</button>
            </form>

            <form id="register" class="input-goup" action="salvarCliente">
                <input type="text" class="input-field" placeholder="Nome" required name="nome">
                <input type="date" class="input-field" placeholder="Data de Nascimento" required name="data">
                <input type="email" class="input-field" placeholder="Email " required name="email">
                <input type="password" class="input-field" placeholder="Enter Password" required>
                
                <input type="text" class="input-field" placeholder="Endereco" name="endereco">
                <input type="tel" class="input-field" placeholder="Telefone" required name="telefone">
                
                <input type="radio" id="Feminino" name="genero" value="Feminino" required="required">
                <label for="Feminino">Feminino</label><br>
                <input type="radio" id="Masculino" name="genero" value="Masculino" required="required">
                <label for="Masculino">Masculino</label><br>
            
                <label for="">Produtos de preferencia :</label>
                
                <select name="produtoPref" class="tp-produto">
                    <option class="itens-pr" value="Sorvete">Sorvete</option>
                    <option value="MilkShake">MilkShake</option>
                    <option value="Sandue">Sandue</option>
                    <option value="Picole">Picolé</option>
                </select>
                
                
               <!--  <input type="checkbox" class="check-box"><span>I agree to the terms & conditions</span> -->
                <button type="submit" class="submit-btn">Register</button>
            </form>
        </div>
    </div>

    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register(){
            x.style.left = "-450px";
            y.style.left = " 50px";
            z.style.left = "110px"
        }

        function login(){
            x.style.left = " 50px";
            y.style.left = " 450px";
            z.style.left = "0"
        }
    </script>
</body>
</html>