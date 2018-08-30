require "./lib/dinda/github_api"
require "test/unit"


module Dinda
  module GithubApi
    class TestPerform < Test::Unit::TestCase

      def expected_file_content
        "Antonio Filho; antonio.filho@dinda.com.br; -; -; 58
Pedro Matiello; pedro@pmatiello.me; pmatiello; https://avatars0.githubusercontent.com/u/46062?v=4; 10
Antonio Carlos; antonio@compilandosolucao.com.br; antoniofilho; https://avatars1.githubusercontent.com/u/469113?v=4; 8
André Rodrigues; a.andremr@gmail.com; andre-rodrigues; https://avatars0.githubusercontent.com/u/674120?v=4; 4
Jimmy; alexandre.sns@gmail.com; j133y; https://avatars3.githubusercontent.com/u/517772?v=4; 2
Kassio Borges; kassio.borges@plataformatec.com.br; -; -; 2
Daniel Coca; daniel.coca@youse.com.br; danielcoca; https://avatars3.githubusercontent.com/u/12816947?v=4; 2
Lucas Mazza; lucas.mazza@plataformatec.com.br; lucasmazza; https://avatars0.githubusercontent.com/u/80978?v=4; 1
Bruno Vicenzo; bnascimento@avenuecode.com; bvicenzo; https://avatars1.githubusercontent.com/u/173159?v=4; 1
Bruno Vicenzo; greenmetal@gmail.com; bvicenzo; https://avatars1.githubusercontent.com/u/173159?v=4; 1
rodrigo brancher; rbrancher@gmail.com; rbrancher; https://avatars2.githubusercontent.com/u/393354?v=4; 1
Kassio Borges; kassioborgesm@gmail.com; kassio; https://avatars1.githubusercontent.com/u/120483?v=4; 1
Marcio Toshio Ide; contato@marciotoshio.com.br; marciotoshio; https://avatars2.githubusercontent.com/u/454861?v=4; 1
Marcio Toshio Ide; marcio.ide@dinda.com.br; marciotoshio; https://avatars2.githubusercontent.com/u/454861?v=4; 1
Daniel Mello Urbano; dnl_stunts@hotmail.com; stunts; https://avatars3.githubusercontent.com/u/199619?v=4; 1
Daniel Vidal Salvi Marson; daniel.vidal@youse.com.br; danielvidal; https://avatars2.githubusercontent.com/u/392737?v=4; 1
Denis Tierno; denisantoniazzi@icloud.com; detierno; https://avatars1.githubusercontent.com/u/65082?v=4; 1
Carlos Henrique; carlosoteras@gmail.com; soteras; https://avatars3.githubusercontent.com/u/7086520?v=4; 1
"
      end

      # describe module.perform
      # context 'when standard use'
      def test_standard_use
        Dinda::GithubApi.perform
        file = Dir.pwd + "/outputs/braspag-rest-#{Time.now}.txt"

        assert_equal(true, File.file?(file) )
        assert_equal(expected_file_content, File.read(file) )

        File.delete(file)
        Fetcher.clear
      end

      # context 'when inexistent'
      def test_inexistent
        Dinda::GithubApi.perform('dnawuidnwa')
        file = Dir.pwd + "/outputs/dnawuidnwa-#{Time.now}.txt"

        assert_equal(true, File.file?(file) )
        assert_equal('', File.read(file) )

        File.delete(file)
        Fetcher.clear
      end

    end
  end
end
