<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@include file="../layout/taglib.jsp" %>

        <title>Code Verification JSP</title>


        <style>
            .form-signin {
                max-width: 330px;
                padding: 15px;
                margin: 0 auto;
            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }
            .form-signin .checkbox {
                font-weight: normal;
            }
            .form-signin .form-control {
                position: relative;
                height: auto;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                padding: 10px;
                font-size: 16px;
            }
            .form-signin .form-control:focus {
                z-index: 2;
            }
            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>


        <form class="form-signin" action="/verification" method="post">
            <h1>Verification Code</h1>
            <br />
            <label>Enter Your Key</label>
            <input type="text" name="code" class="form-control" placeholder="Verification Code">
            <br />
            <input class="btn btn-lg btn-primary btn-block" type="submit" name="button" value="Verify">
            <input class="btn btn-lg btn-danger  btn-block" type="submit" name="exit-verification" value="Exit Verification">
        </form>