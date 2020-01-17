class CenarioNegativo < SitePrism::Page
    element :btn_menu, 'ul.header__nav-list .header__nav-list-item:nth-child(5) a'
    element :field_email, '#login-form-email'
    element :btn_acess, '.loadr-button button'
    element :bullet, :xpath, '//li[contains(text(), "Login inválido.")]'

    def fill_email
        sleep 2
        field_email.set('lucas.lima@gmail.com')
        sleep 1
        btn_acess.click
    end

    def visible_bullet
        sleep 2
        if bullet.visible?
            print 'Cenário Concluído'
        end
    end
end