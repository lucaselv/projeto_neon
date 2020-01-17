class VerificandoElementos < SitePrism::Page
    element :text_question, :xpath, '//li[contains(@class, "color-azul-medio")]//h4[contains(text(), "Qual é a idade mínima para abrir uma conta Neon?")]'
    element :btn_menu, 'ul.header__nav-list li:nth-child(3) a[queryparamshandling="preserve"]'
    element :content_answer, :xpath, '//li[contains(@class, "color-azul-medio")]//div//p[contains(text(), "É só ter mais de 18 anos, e um RG ou CPF válido em território nacional.")]'

    def click_extended
        sleep 3
        scroll_to_element(text_question)
        text_question.click
        sleep 3
    end

    def click_menu
        sleep 3
        btn_menu.click
    end

    def check_answer
        sleep 2
        if content_answer.visible?
            print 'Cenário concluido!'
        end
    end
    
    def scroll_to_element(text_question)
        sleep 2
        page.execute_script('arguments[0].scrollIntoView();', text_question)
    end
end