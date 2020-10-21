# Aplicativo Appetit
<h2>Este desafio contempla o desenvolvimento de uma plataforma de solicitação de pedidos em um café fictício. Desafio proposto pela empresa Maida.</h2>
</br>
<h2>Setup Windows</h2>
<ul>
   <li>
<strong> Sistemas operacionais </strong>: Windows 7 SP1 ou posterior (64 bits), baseado em x86-64 </li>
   <li>
<strong> Espaço em disco </strong>: 1,32 GB (não inclui espaço em disco para IDE / ferramentas). </li>
   <li>
<strong> Ferramentas </strong>: o Flutter depende da disponibilidade dessas ferramentas em seu ambiente.
     <ul>
       <li>
<a href="https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell"> Windows PowerShell 5.0 </a> ou mais recente (pré-instalado com o Windows 10 ) </li>
       <li>
         <p> <a href="https://git-scm.com/download/win"> Git para Windows </a> 2.x, com <strong> Usar Git no Prompt de Comando do Windows </strong> opção. </p>
         <p> Se o Git para Windows já estiver instalado, certifique-se de executar os comandos <code class = "language-plaintext highlighter-rouge">git</code> no prompt de comando ou PowerShell. </p>
       </li>
     </ul>
   </li>
</ul>
<h2> Obtenha o Flutter SDK </h2>
<ol>
   <li>
     <p>Baixe o seguinte pacote de instalação para obter a mais recente
versão estável do Flutter SDK:</p>
<p><a href="https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_1.22.2-stable.zip" class="download-latest-link-windows btn btn-primary"> flutter_windows_1.22.2-stable.zip</a></p>
<p>Para outros canais de lançamento e construções mais antigas, consulte o
Página de <a href="/docs/development/tools/sdk/releases">versões do SDK</a>.</p>
   </li>
   <li>
     <p> Extraia o arquivo zip e coloque o <code class = "language-plaintext highlighter-rouge"> flutter </code> contido
no local de instalação desejado para o Flutter SDK
(por exemplo, <code class = "language-plaintext highlighter-rouge"> C: \ src \ flutter </code>). </p>
   </li>
</ol>
<aside class = "alert alert-warning" role = "alert">
   <p> <i class = "fas fa-exclamation-triangle"> </i> <strong>Aviso: </strong>
   Não instale o Flutter em um diretório como
   <code class = "language-plaintext highlighter-rouge">C:\Arquivos de programas\</code> pois o Flutter requer privilégios elevados. </p>
</aside>
<p>Se você não quiser instalar uma versão fixa da instalação
pacote, você pode pular as etapas 1 e 2. Em vez disso, obtenha o código-fonte
de <a href="https://github.com/flutter/flutter">Flutter repo</a> em
GitHub e altere branches ou tags conforme necessário. Por exemplo:</p>
<div id="code-excerpt-0"><pre class="highlight"><code><span class="kd">C</span>:\src&gt;git <span class="kd">clone</span> <span class="kd">https</span>://github.com/flutter/flutter.git <span class="na">-b </span><span class="kd">stable</span>
</code></pre></div>
<p>Agora você está pronto para executar comandos Flutter no Console.</p>
<h2>Atualize o path</h2>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Se você deseja executar comandos Flutter no console normal do Windows, siga estas etapas para adicionar Flutter à </font></font><font style="vertical-align: inherit;">variável de ambiente: </font></font><code class="language-plaintext highlighter-rouge">PATH</code><font style="vertical-align: inherit;"></p>
<ul>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Na barra Iniciar pesquisa, digite 'env' e selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Editar variáveis &#8203;&#8203;de ambiente para sua conta</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Em </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Variáveis &#8203;&#8203;do usuário,</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> verifique se há uma entrada chamada </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Caminho</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> :
    </font></font><ul>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Se a entrada existir, anexe o caminho completo para </font></font><code class="language-plaintext highlighter-rouge">flutter\bin</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">usar
 </font></font><code class="language-plaintext highlighter-rouge">;</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">como separador dos valores existentes.</font></font></li>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Se a entrada não existir, crie uma nova variável de usuário nomeada </font></font><code class="language-plaintext highlighter-rouge">Path</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">com o caminho completo para </font></font><code class="language-plaintext highlighter-rouge">flutter\bin</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> como seu valor.</font></font></li>
    </ul>
  </li>
</ul>
<p>Você deve fechar e reabrir todas as janelas de console existentes para que essas alterações tenham efeito.</p>
<h2>
<a class="anchor" href="#run-flutter-doctor" aria-hidden="true"><span class="octicon octicon-link"></span></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Rode o comando </font></font><code class="language-plaintext highlighter-rouge">flutter doctor</code>
</h2>
<p>Em uma janela de console que tem o diretório Flutter no caminho (veja acima), execute o seguinte comando para ver se há alguma dependência de plataforma necessária para concluir a configuração:</p>
<code><span class="kd">C</span>:\src\flutter&gt;flutter <span class="kd">doctor</span>
</code>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Este comando verifica seu ambiente e exibe um relatório do status da instalação do Flutter. </font><font style="vertical-align: inherit;">Verifique a saída com cuidado para ver se você precisa instalar algum outro software ou realizar alguma tarefa (mostrado em </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">negrito</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ).</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Por exemplo:</font></font></p>
<div id="code-excerpt-4"><pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">[-] Conjunto de ferramentas Android - desenvolver para dispositivos Android</font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
    • Android SDK em D:\Android\sdk</font></font><font></font>
    <strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">✗ O Android SDK não possui ferramentas de linha de comando; </font><font style="vertical-align: inherit;">download em https://goo.gl/XxQghQ</font></font></strong><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
    • Tente reinstalar ou atualizar seu Android SDK,</font></font><font></font><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
      visite https://flutter.dev/setup/#android-setup para obter instruções detalhadas.</font></font><font></font>
</pre></div>
<h2 id="android-setup">
<a class="anchor" href="#android-setup" aria-hidden="true"><span class="octicon octicon-link"></span></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Configuração Android</font></font></h2>

<h3 id="install-android-studio">
<a class="anchor" href="#install-android-studio" aria-hidden="true"><span class="octicon octicon-link"></span></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Instale o Android Studio</font></font></h3>

<ol>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Baixe e instale o </font></font><a href="https://developer.android.com/studio"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Android Studio</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Inicie o Android Studio e siga o 'Android Studio Setup Wizard'. </font><font style="vertical-align: inherit;">Isso instala o mais recente Android SDK, Android SDK Command-line Tools e Android SDK Build-Tools, que são exigidos pelo Flutter ao desenvolver para Android.</font></font></li>
</ol>

<h3 id="set-up-your-android-device">
<a class="anchor" href="#set-up-your-android-device" aria-hidden="true"><span class="octicon octicon-link"></span></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Configure seu dispositivo Android</font></font></h3>

<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Para se preparar para executar e testar seu aplicativo Flutter em um dispositivo Android, você precisa de um dispositivo Android com Android 4.1 (API de nível 16) ou superior.</font></font></p>

<ol>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ative as </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">opções do desenvolvedor</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> e a </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">depuração USB</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> em seu dispositivo. </font><font style="vertical-align: inherit;">Instruções detalhadas estão disponíveis na </font></font><a href="https://developer.android.com/studio/debug/dev-options"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">documentação</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> do
 </font><a href="https://developer.android.com/studio/debug/dev-options"><font style="vertical-align: inherit;">Android</font></a><font style="vertical-align: inherit;"> .</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Apenas para Windows: Instale o </font></font><a href="https://developer.android.com/studio/run/win-usb"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">driver USB</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> do </font><a href="https://developer.android.com/studio/run/win-usb"><font style="vertical-align: inherit;">Google</font></a><font style="vertical-align: inherit;"> .</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Usando um cabo USB, conecte seu telefone ao computador. </font><font style="vertical-align: inherit;">Se solicitado em seu dispositivo, autorize seu computador a acessar seu dispositivo.</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">No terminal, execute o </font></font><code class="language-plaintext highlighter-rouge">flutter devices</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">comando para verificar se o Flutter reconhece seu dispositivo Android conectado. </font><font style="vertical-align: inherit;">Por padrão, o Flutter usa a versão do Android SDK onde sua </font></font><code class="language-plaintext highlighter-rouge">adb</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
ferramenta está baseada. </font><font style="vertical-align: inherit;">Se quiser que o Flutter use uma instalação diferente do Android SDK, você deve definir a </font></font><code class="language-plaintext highlighter-rouge">ANDROID_SDK_ROOT</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">variável de ambiente para esse diretório de instalação.</font></font></li>
</ol>

<h3 id="set-up-the-android-emulator">
<a class="anchor" href="#set-up-the-android-emulator" aria-hidden="true"><span class="octicon octicon-link"></span></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Configure o emulador Android</font></font></h3>

<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Para se preparar para executar e testar seu aplicativo Flutter no emulador Android, siga estas etapas:</font></font></p>

<ol>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ative a
 </font></font><a href="https://developer.android.com/studio/run/emulator-acceleration"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">aceleração de VM</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
em sua máquina.</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Inicie o </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Android Studio</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , clique no </font><font style="vertical-align: inherit;">
ícone </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">AVD Manager</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> e selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Create Virtual Device ...</font></font></strong>
    <ul>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Em versões anteriores do Android Studio, você deve iniciar </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Android Studio&gt; Ferramentas&gt; Android&gt; AVD Manager</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> e selecionar
 </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Criar dispositivo virtual…</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> . </font><font style="vertical-align: inherit;">(O </font><font style="vertical-align: inherit;">submenu </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Android</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> está presente apenas quando dentro de um projeto Android.)</font></font></li>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Se você não tiver um projeto aberto, pode escolher 
 </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Configure&gt; AVD Manager</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> e selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Create Virtual Device ...</font></font></strong>
</li>
    </ul>
  </li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Escolha uma definição de dispositivo e selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Avançar</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Selecione uma ou mais imagens do sistema para as versões do Android que deseja emular e selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Avançar</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> . </font><font style="vertical-align: inherit;">Uma imagem </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">x86</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ou </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">x86_64</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> é recomendada.</font></font></li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Em Desempenho emulado, selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Hardware - GLES 2.0</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> para ativar a
 </font></font><a href="https://developer.android.com/studio/run/emulator-acceleration"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">aceleração de hardware</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></li>
  <li>
    <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Verifique se a configuração do AVD está correta e selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Concluir</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></p>
    <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Para obter detalhes sobre as etapas acima, consulte </font></font><a href="https://developer.android.com/studio/run/managing-avds"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Gerenciando AVDs</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></p>
  </li>
  <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">No Android Virtual Device Manager, clique </font><font style="vertical-align: inherit;">em </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Executar</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> na barra de ferramentas. </font><font style="vertical-align: inherit;">O emulador é inicializado e exibe a tela padrão para a versão do sistema operacional e dispositivo selecionados.</font></font></li>
</ol>
<h1><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Configure um editor</font></font></h1>
<p>Siga as etapas abaixo para adicionar um plug-in de editor para Android Studio</p>
    <h2 id="install-android-studio"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Instale o Android Studio</font></font></h2>
    <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">O Android Studio oferece uma experiência IDE completa e integrada para Flutter.</font></font></p>
    <ul>
      <li><a href="https://developer.android.com/studio"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Android Studio</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , versão 3.0 ou posterior</font></font></li>
    </ul>
    <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Como alternativa, você também pode usar o IntelliJ:</font></font></p>
    <ul>
      <li><a href="https://www.jetbrains.com/idea/download/"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comunidade IntelliJ IDEA</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , versão 2017.1 ou posterior</font></font></li>
      <li><a href="https://www.jetbrains.com/idea/download/"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">IntelliJ IDEA Ultimate</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , versão 2017.1 ou posterior</font></font></li>
    </ul>
    <h2 id="install-the-flutter-and-dart-plugins"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Instale os plug-ins Flutter e Dart</font></font></h2>
    <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Para instalar estes:</font></font></p>
    <ol>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Inicie o Android Studio.</font></font></li>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Abra as preferências de plug- </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ins</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ( </font><strong><font style="vertical-align: inherit;">Configurar&gt; Plug-ins a</font></strong><font style="vertical-align: inherit;"> partir de v3.6.3.0 ou posterior).</font></font></li>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Selecione o plugin Flutter e clique em </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Instalar</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></li>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Clique em </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Sim</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> quando solicitado a instalar o plug-in Dart.</font></font></li>
      <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Clique em </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Reiniciar</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> quando solicitado.</font></font></li>
    </ol>
    <aside class="alert alert-info" role="alert">
      <p><i class="fas fa-info-circle"></i> <strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Observação:</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
  antes da v3.6.3.0, acesse as preferências de plug-in da seguinte forma:</font></font></p>
      <ol>
        <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Abra as preferências de plugin (no MacOS vá para </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Preferências&gt; Plug-ins</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ; no Windows e Linux vá para </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Arquivo&gt; Configurações&gt; Plug-ins</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ).</font></font></li>
        <li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Selecione </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Marketplace</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> , selecione o plugin Flutter e clique em
 </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Instalar</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> .</font></font></li>
      </ol>
    </aside>
  </div>
  <h2>Abrindo o projeto no Android Studio</h2>
  <p>Clique em Open an existing Android Studio project</p>
  <p>Procure pela pasta cafe_appetit_teste, entre na pasta e selecione o projeto cafe_appetit</p>
  <p>Abra o terminal e digite flutter pub get para baixar dependencias do projeto.</p>
  
