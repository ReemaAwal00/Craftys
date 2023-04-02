/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener('DOMContentLoaded', () => {
    const login_profile = document.getElementById("login-profile");
    login_profile.addEventListener("click",() =>{
       checkLoginStatus().then((isLoggedIn) => {
        console.log(isLoggedIn);
        const xhr = new XMLHttpRequest();

        if (isLoggedIn) {
            xhr.open("GET", "/CRAFTYS/UserServlet?page=profile");
            xhr.send();
        } else {
            xhr.open("GET", "/CRAFTYS/UserServlet?page=login");
            xhr.send();
        }
    }); 
    });
    
});

function checkLoginStatus() {
    return new Promise((resolve, reject) => {
        const xhr = new XMLHttpRequest();
        xhr.open("GET", "/CRAFTYS/getloginstatus");
        xhr.onload = () => {
            if (xhr.status === 200) {
                resolve(true); // user is logged in
            } else {
                resolve(false); // user is not logged in
            }
        };
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    });
}