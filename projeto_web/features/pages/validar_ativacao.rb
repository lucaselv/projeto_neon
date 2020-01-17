class ValidarAtivacao < SitePrism::Page
  element :btn_status, '.footer__nav-list .footer__nav-list-item:nth-child(3) a'
  element :tab_ativacao, '.grid-cell-center .grid-cell-gutter:nth-child(13) div[data-tooltip-text="Funcionando normalmente"]'

  def click_btn
    sleep 3
    scroll_to_element(btn_status)
    btn_status.click
  end

  def hover_element
    sleep 1
    scroll_to_tab(tab_ativacao)
    tab_ativacao.click
    sleep 2
  end

  def scroll_to_element(btn_status)
    sleep 2
    page.execute_script('arguments[0].scrollIntoView();', btn_status)
  end

  def scroll_to_tab(tab_ativacao)
    sleep 2
    page.execute_script('arguments[0].scrollIntoView();', tab_ativacao)
  end
end
