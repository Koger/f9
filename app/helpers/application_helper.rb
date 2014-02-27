module ApplicationHelper

  # Возвращает полный заголовок зависящий от страницы # Документирующий коментарий
  def full_title(page_title)                          # Определение метода
    base_title = "Dean's Office 3"  # Назначение переменной
    if page_title.empty?                              # Булевый тест
      base_title                                      # Явное возвращение
    else
      "#{page_title} | #{base_title}"                 # Интерполяция строки
    end
  end
end
