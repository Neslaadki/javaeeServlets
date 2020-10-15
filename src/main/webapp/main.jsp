<%--/Страница JSP, формирующая HTML-страницу с веб-формой. Должна обрабатывать все запросы, не содержащие сведений о координатах точки и радиусе области.--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab1</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="form_style.css">
</head>

<body>
<div>
    <header>
        <h1>
            Проверка попадания точки в заданную область
        </h1>
        <p>
            <a href="https://isu.ifmo.ru/pls/apex/f?p=2437:7:109996409750410:::::" target="_blank">Дзюбак Антон Михайлович P3214</a>
            <br> Вариант - 2502
        </p>
    </header>
</div>
<div class="content">
    <div class="block">
        <div class="block__column">
            <div class="block__item">
                <svg xmlns="http://www.w3.org/2000/svg" width="300" height="300">

                    <!-- draw axis - -->
                    <line x1="0" y1="150" x2="300" y2="150" stroke="#003"></line>
                    <line x1="150" y1="0" x2="150" y2="300" stroke="#003"></line>
                    <polygon points="300,150 295,145 295,155" fill="#003" stroke="#000"></polygon>
                    <polygon points="150,0 145,5 155,5" fill="#003" stroke="#000"></polygon>
                    <line x1="270" y1="155" x2="270" y2="145" stroke="#000"></line>
                    <text x="265" y="140" class="axis-text">R</text>
                    <line x1="210" y1="155" x2="210" y2="145" stroke="#000"></line>
                    <text x="200" y="140" class="axis-text">R/2</text>
                    <line x1="90" y1="155" x2="90" y2="145" stroke="#000"></line>
                    <text x="75" y="140" class="axis-text">-R/2</text>
                    <line x1="30" y1="155" x2="30" y2="145" stroke="#000"></line>
                    <text x="23" y="140" class="axis-text">-R</text>
                    <line x1="145" y1="30" x2="155" y2="30" stroke="#000"></line>
                    <text x="157" y="35" class="axis-text">R</text>
                    <line x1="145" y1="90" x2="155" y2="90" stroke="#000"></line>
                    <text x="157" y="95" class="axis-text">R/2</text>
                    <line x1="145" y1="210" x2="155" y2="210" stroke="#000"></line>
                    <text x="157" y="215" class="axis-text">-R/2</text>
                    <line x1="145" y1="270" x2="155" y2="270" stroke="#000"></line>
                    <text x="157" y="275" class="axis-text">-R</text>

                    <!-- draw figures - -->
                    <polygon points="90,150 150,30 150,150" fill="#00f" stroke="#003" fill-opacity="0.5"></polygon>
                    <rect height="120" width="60" x="150" y="150" fill-opacity="0.5" fill="#a0f" stroke="#003"></rect>
                    <path stroke="#003" d="M 270,150 L 150,150 L 150,90 A 60,60 0 0 1 210,150" fill-opacity="0.5"></path>
                </svg>
            </div>
        </div>
        <div class="block__column">
            <div class="block__item">
                <div style="background-color: rgb(9, 166, 172); border-bottom: 4px solid rgb(92, 90, 90);">

                    <form class="form" method="POST" id="_form">
                        <div class="item_x" style="text-align: center;" id="_x">
                            <label> Координата X:
                                <select class="x" name="select_x" id="select_x" form="_form">
                                    <option selected value="no"> Не выбрано </option>
                                    <option value="-3"> -3 </option>
                                    <option value="-2"> -2 </option>
                                    <option value="-1"> -1 </option>
                                    <option value="0"> 0 </option>
                                    <option value="1"> 1 </option>
                                    <option value="2"> 2 </option>
                                    <option value="3"> 3 </option>
                                    <option value="4"> 4 </option>
                                    <option value="5"> 5 </option>
                                </select>
                            </label>
                        </div>
                        <div class="item_y" style="text-align: center;">
                            <label> Координата Y:
                                <input class="y" size="12px" id="_y" name="input_y" form="_form" type="text" maxlength="8" placeholder="от -5 до 5" data-rule="number">
                            </label>
                        </div>
                        <div class="item_radius" style="text-align: center;">
                            <label> Радиус R:
                                <select class="r" name="select_r" id="_r" form="_form">
                                    <option selected value="no"> Не выбрано </option>
                                    <option value="1 "> 1 </option>
                                    <option value="2 "> 2 </option>
                                    <option value="3 "> 3 </option>
                                    <option value="4 "> 4 </option>
                                    <option value="5 "> 5 </option>
                                </select>
                            </label>
                        </div>
                        <div>

                            <button class="send" type="submit" form="_form"> Отправить </button>
                            <button class="reset" type="reset" form="_form"> Сбросить </button>
                            <button class="resetTable"> Очистить таблицу </button>
                        </div>
                    </form>
                </div>
                <div>
                    <div class="mobile-table">
                        <table class="iksweb" id="resultTable">
                            <thead>
                            <tr>
                                <th>X</th>
                                <th>Y</th>
                                <th>R</th>
                                <th>Попал?</th>
                                <th>Время</th>
                                <th>Время выполнения</th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>