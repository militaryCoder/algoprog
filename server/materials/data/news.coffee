import news from "../lib/news"
import newsItem from "../lib/newsItem"

export default allNews = () ->
    return news([
        newsItem("Занятия по воскресеньям", String.raw"""
            Занятия по воскресеньям в этом учебном году будут проходить в <b>нижегородском филиале ВШЭ по адресу ул. Костина, д. 2б</b> (вход с пл. Горького, дверь справа от центра оперативной печати, проходите здание насквозь и во дворе вход в нужное здание).
            Точные номера аудиторий я пока не знаю, звоните, когда будете на месте.<br/>
            Первые два занятия будет 12 и 19 сентября с 14:00 до 17:00. На него можно приходить только тем школьникам, 
            кто ходил на очные занятия раньше, или у кого уровень минимум 2.<br/>
            Первое занятие для новичков будет 26 сентября в 14:00, далее расписание занятий может слегка измениться.
        """),
        newsItem("Занятия в лицее 40", String.raw"""
            Первое занятие в лицее 40 в этом учебном году будет 8 сентября <b>в 15:00</b>. На него можно приходить только тем лицеистам, 
            кто ходил на очные занятия раньше, или у кого уровень минимум 2.<br/>
            Первое занятие для новичков будет 15 сентября <b>в 15:00</b>.
        """),
        newsItem("Опрос про алгопрог", String.raw"""
            Ответьте, пожалуйста, <a href="https://docs.google.com/forms/d/e/1FAIpQLSdDXTZ1yMHp_yk3Di5ie4BcI9HXKtnlJ8iyp9iupdX4fezqag/viewform?usp=sf_link">на несколько вопросов</a>. Тем, кто уже отвечал — я там добавил несколько вопросов, можете ответить еще раз.
        """),
    ])
