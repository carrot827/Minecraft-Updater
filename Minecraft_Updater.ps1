#Variable suceptible de changer
$site_serveur_minecraft = "https://www.minecraft.net/fr-fr/download/server"
$download_java = "https://www.oracle.com/java/technologies/downloads/"

#Interface graphique
[xml]$XML = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:MinecraftUpdater"
        Title="Minecraft Server Updater" Height="1080" Width="1920" MaxHeight="1080" MaxWidth="1920" Icon="$PSScriptRoot\Ressources\Images\minecraft_logo.ico">

    <Grid>
        <Image x:Name="fond" Grid.ColumnSpan="2" Margin="-2,-8,-72,-49" Source="$PSScriptRoot\Ressources\Images\fond.png" Stretch="Fill"/>
        <Image x:Name="fond2" Margin="-38,-28,-31,-28" Source="$PSScriptRoot\Ressources\Images\fond2.jpg" Stretch="Fill"/>

<TextBlock x:Name="program_name" HorizontalAlignment="Center" Margin="0,114,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Height="153" Width="1015" FontSize="90" FontStyle="Normal" FontWeight="Normal" FontFamily="minecraft" Foreground="#ffffff" TextAlignment="Center"><Run Language="fr-be" Text="Minecraft Updater"/></TextBlock>
<TextBlock x:Name="version" HorizontalAlignment="Left" Margin="34,974,0,0" TextWrapping="Wrap" Text="Version 1.1" VerticalAlignment="Top" Foreground="White" FontFamily="minecraft" FontSize="20"/>

        <Menu x:Name="menu" Margin="596,373,555,113" Cursor="Hand" Background="{x:Null}">
            <Button x:Name="open_website" Content="Telecharger la derniere version de Minecraft" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="start" Content="Mise a jour du serveur" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="about" Content="A propos de Minecraft Updater" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="exit" Content="Quitter" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
        </Menu>

<TextBlock x:Name="text_about" HorizontalAlignment="Left" Margin="552,326,0,0" TextWrapping="Wrap" VerticalAlignment="Top" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" Height="630" Width="1004"><Run Text="Ce programme simplifie les mises a jour sur vos serveurs Minecraft Java Edition"/><LineBreak/><Run Language="fr-be" Text=""/><LineBreak/><Run Language="fr-be" Text="Version actuelle  :  1.1"/><LineBreak/><Run Language="fr-be" Text=""/><LineBreak/><Run Language="fr-be" Text="Createur  :  Frederic Grandgagnage"/><LineBreak/></TextBlock>
<Button x:Name="exit_about" Content="Termine" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Top" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Margin="599,861,0,0" Foreground="#ffffff"/>

        <TextBlock x:Name="barre_menu__select_folder_dest" HorizontalAlignment="Left" Height="31" Margin="462,296,0,0" TextWrapping="NoWrap" Text="   Selectionnez le dossier de l'installation" VerticalAlignment="Top" Width="990" Background="#FFA5A5A5" FontFamily="minecraft" Foreground="#ffffff" FontSize="20"/>
        <Button x:Name="exit_window_select_folder_dest" Content="X" HorizontalAlignment="Left" Height="32" Margin="1421,295,0,0" VerticalAlignment="Top" Width="32" Background="#FFBB0D0D" FontSize="15" FontFamily="minecraft" BorderBrush="{x:Null}" Cursor="Hand"/>
        <TextBlock x:Name="folder_dest_select_folder" HorizontalAlignment="Left" Height="452" Margin="462,326,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Veuillez selectionner le dossier de destination de l'installation."/></TextBlock>

        <Menu x:Name="menu_select_folder_dest" Margin="572,454,579,381" Cursor="Hand" Background="{x:Null}">
            <Button x:Name="browse_folder_dest" Content="Parcourir" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="next_folder_dest" Content="Suivant" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
        </Menu>

        <TextBlock x:Name="barre_menu__select_folder_old" HorizontalAlignment="Left" Height="31" Margin="462,296,0,0" TextWrapping="NoWrap" Text="   Selectionnez le dossier de l'ancien serveur" VerticalAlignment="Top" Width="990" Background="#FFA5A5A5" FontFamily="minecraft" Foreground="#ffffff" FontSize="20"/>
        <Button x:Name="exit_window_select_folder_old" Content="X" HorizontalAlignment="Left" Height="32" Margin="1421,295,0,0" VerticalAlignment="Top" Width="32" Background="#FFBB0D0D" FontSize="15" FontFamily="minecraft" BorderBrush="{x:Null}" Cursor="Hand"/>
        <TextBlock x:Name="folder_old_select_folder" HorizontalAlignment="Left" Height="452" Margin="462,326,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Veuillez selectionner le dossier du servuer a mettre a jour."/></TextBlock>

        <Menu x:Name="menu_select_folder_old" Margin="572,454,579,381" Cursor="Hand" Background="{x:Null}">
            <Button x:Name="browse_folder_old" Content="Parcourir" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="next_folder_old" Content="Suivant" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
        </Menu>

        <TextBlock x:Name="barre_menu__select_fichier_jar" HorizontalAlignment="Left" Height="31" Margin="462,296,0,0" TextWrapping="NoWrap" Text="   Selectionnez le serveur  ' .jar '" VerticalAlignment="Top" Width="990" Background="#FFA5A5A5" FontFamily="minecraft" Foreground="#ffffff" FontSize="20"/>
        <Button x:Name="exit_window_select_fichier_jar" Content="X" HorizontalAlignment="Left" Height="32" Margin="1421,295,0,0" VerticalAlignment="Top" Width="32" Background="#FFBB0D0D" FontSize="15" FontFamily="minecraft" BorderBrush="{x:Null}" Cursor="Hand"/>
        <TextBlock x:Name="folder_old_select_fichier_jar" HorizontalAlignment="Left" Height="452" Margin="462,326,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Veuillez selectionner le nouveau serveur  '' server . jar '' ."/></TextBlock>

        <Menu x:Name="menu_select_fichier_jar" Margin="572,454,579,381" Cursor="Hand" Background="{x:Null}">
            <Button x:Name="browse_fichier_jar" Content="Parcourir" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="next_fichier_jar" Content="Suivant" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
        </Menu>


        <TextBlock x:Name="barre_menu__select_fichier_recap" HorizontalAlignment="Left" Height="31" Margin="462,296,0,0" TextWrapping="NoWrap" Text="   Recapitulatif" VerticalAlignment="Top" Width="990" Background="#FFA5A5A5" FontFamily="minecraft" Foreground="#ffffff" FontSize="20"/>
        <TextBlock x:Name="folder_select_fichier_recap_text" HorizontalAlignment="Left" Height="452" Margin="462,326,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Les resultats sont-ils corrects ?"/></TextBlock>

        <TextBlock x:Name="folder_select_fichier_recap" HorizontalAlignment="Left" Height="452" Margin="462,390,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Dossier d'installation :"/> <Run/><LineBreak/><Run Text=""/> <Run/><LineBreak/><Run Text=""/> <Run/><LineBreak/><Run Text=""/> <Run/><LineBreak/><Run Text="   Dossier du serveur a mettre a jour :"/> <Run/><LineBreak/><Run Text=""/> <Run/><LineBreak/><Run Text=""/> <Run/><LineBreak/><Run Text=""/> <Run/><LineBreak/><Run Text="   Nouveau serveur :"/> </TextBlock>
        
        <TextBox x:Name="OutputBox1" IsReadOnly="True" Margin="478,457,465,476" Background="{x:Null}" BorderBrush="{x:Null}" Foreground="#FFF1FF00" SelectionBrush="{x:Null}" SelectionTextBrush="{x:Null}" FontSize="20" FontFamily="minecraft" Cursor=""/>
        <TextBox x:Name="OutputBox2" IsReadOnly="True" Margin="478,559,465,374" Background="{x:Null}" BorderBrush="{x:Null}" Foreground="#FFF1FF00" SelectionBrush="{x:Null}" SelectionTextBrush="{x:Null}" FontSize="20" FontFamily="minecraft" Cursor=""/>
        <TextBox x:Name="OutputBox3" IsReadOnly="True" Margin="478,657,465,276" Background="{x:Null}" BorderBrush="{x:Null}" Foreground="#FFF1FF00" SelectionBrush="{x:Null}" SelectionTextBrush="{x:Null}" FontSize="20" FontFamily="minecraft" Cursor=""/>

        <Menu x:Name="menu_select_fichier_recap" Margin="572,712,579,195" Cursor="Hand" Background="{x:Null}">
            <Button x:Name="cancel_fichier_recap" Content="Abandonner" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="next_fichier_recap" Content="Debuter les operations" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
        </Menu>
        
        <TextBlock x:Name="barre_menu_loading" HorizontalAlignment="Left" Height="31" Margin="462,296,0,0" TextWrapping="NoWrap" Text="   Operations en cours" VerticalAlignment="Top" Width="990" Background="#FFA5A5A5" FontFamily="minecraft" Foreground="#ffffff" FontSize="20"/>
        <TextBlock x:Name="loading" HorizontalAlignment="Left" Height="452" Margin="462,326,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Veuillez patienter ..."/></TextBlock>
        <ProgressBar x:Name="load_progress" HorizontalAlignment="Left" Height="70" Margin="606,534,0,0" VerticalAlignment="Top" Width="700" Value="0" IsIndeterminate="True"/>


        <TextBlock x:Name="barre_menu__select_ram" HorizontalAlignment="Left" Height="31" Margin="462,296,0,0" TextWrapping="NoWrap" Text="   Memoire allouee" VerticalAlignment="Top" Width="990" Background="#FFA5A5A5" FontFamily="minecraft" Foreground="#ffffff" FontSize="20"/>
        <TextBlock x:Name="text_ram" HorizontalAlignment="Left" Height="452" Margin="462,326,0,0" TextWrapping="NoWrap" VerticalAlignment="Top" Width="990" Background="#FFD8D8D8" FontSize="20" FontFamily="minecraft" Foreground="#ffffff" FontWeight="Normal"><Run/><LineBreak/><Run Text="   Combien de GB de RAM voulez-vous allouer a votre nouveau serveur Minecraft ?"/></TextBlock>

        <Menu x:Name="menu_select_size_ram" Margin="572,454,579,282" Cursor="Hand" Background="{x:Null}">
            <Button x:Name="two_memory" Content="2  GB" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="four_memory" Content="                                    4  GB (Recommande)" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="eight_memory" Content="8  GB" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
            <Button x:Name="sixteen_memory" Content="16 GB" Height="53" Width="740" HorizontalAlignment="Left" VerticalAlignment="Center" Cursor="Hand" Background="#FFA5A5A5" BorderBrush="Black" FontSize="20" FontFamily="minecraft" Foreground="#ffffff"/>
        </Menu>
    </Grid>
</Window>
"@

#Prérequis pour l'interface graphique
Add-Type -AssemblyName PresentationFramework
$FormXML = (New-Object System.Xml.XmlNodeReader $XML)
$Window = [Windows.Markup.XamlReader]::Load($FormXML)

#Cacher ou non les fenêtres WPF
function hide_menu()
{
    $Window.FindName("menu").Visibility = "Hidden"
}
function show_menu()
{
    $Window.FindName("menu").Visibility = "Visible"
}

function hide_about()
{
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("exit_about").Visibility = "Hidden"
    $Window.FindName("text_about").Visibility = "Hidden"
}
function show_about()
{
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("exit_about").Visibility = "Visible"
    $Window.FindName("text_about").Visibility = "Visible"
}

function show_start_main_folder()
{
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("barre_menu__select_folder_dest").Visibility = "Visible"
    $Window.FindName("exit_window_select_folder_dest").Visibility = "Visible"
    $Window.FindName("folder_dest_select_folder").Visibility = "Visible"
    $Window.FindName("menu_select_folder_dest").Visibility = "Visible"
}
function hide_start_main_folder()
{
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("barre_menu__select_folder_dest").Visibility = "Hidden"
    $Window.FindName("exit_window_select_folder_dest").Visibility = "Hidden"
    $Window.FindName("folder_dest_select_folder").Visibility = "Hidden"
    $Window.FindName("menu_select_folder_dest").Visibility = "Hidden"
}

function show_select_old_folder(){
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("barre_menu__select_folder_old").Visibility = "Visible"
    $Window.FindName("exit_window_select_folder_old").Visibility = "Visible"
    $Window.FindName("folder_old_select_folder").Visibility = "Visible"
    $Window.FindName("menu_select_folder_old").Visibility = "Visible"
}
function hide_select_old_folder(){
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("barre_menu__select_folder_old").Visibility = "Hidden"
    $Window.FindName("exit_window_select_folder_old").Visibility = "Hidden"
    $Window.FindName("folder_old_select_folder").Visibility = "Hidden"
    $Window.FindName("menu_select_folder_old").Visibility = "Hidden"
}

function show_select_fichier_jar(){
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("barre_menu__select_fichier_jar").Visibility = "Visible"
    $Window.FindName("exit_window_select_fichier_jar").Visibility = "Visible"
    $Window.FindName("folder_old_select_fichier_jar").Visibility = "Visible"
    $Window.FindName("menu_select_fichier_jar").Visibility = "Visible"
}
function hide_select_fichier_jar(){
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("barre_menu__select_fichier_jar").Visibility = "Hidden"
    $Window.FindName("exit_window_select_fichier_jar").Visibility = "Hidden"
    $Window.FindName("folder_old_select_fichier_jar").Visibility = "Hidden"
    $Window.FindName("menu_select_fichier_jar").Visibility = "Hidden"
}

function show_select_fichier_recap(){
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("barre_menu__select_fichier_recap").Visibility = "Visible"
    $Window.FindName("folder_select_fichier_recap_text").Visibility = "Visible"
    $Window.FindName("folder_select_fichier_recap").Visibility = "Visible"
    $Window.FindName("menu_select_fichier_recap").Visibility = "Visible"
    $Window.FindName("OutputBox1").Visibility = "Visible"
    $Window.FindName("OutputBox2").Visibility = "Visible"
    $Window.FindName("OutputBox3").Visibility = "Visible"
}
function hide_select_fichier_recap(){
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("barre_menu__select_fichier_recap").Visibility = "Hidden"
    $Window.FindName("folder_select_fichier_recap_text").Visibility = "Hidden"
    $Window.FindName("folder_select_fichier_recap").Visibility = "Hidden"
    $Window.FindName("menu_select_fichier_recap").Visibility = "Hidden"
    $Window.FindName("OutputBox1").Visibility = "Hidden"
    $Window.FindName("OutputBox2").Visibility = "Hidden"
    $Window.FindName("OutputBox3").Visibility = "Hidden"
}

function show_loading(){
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("barre_menu_loading").Visibility = "Visible"
    $Window.FindName("loading").Visibility = "Visible"
    $Window.FindName("load_progress").Visibility = "Visible"
}
function hide_loading(){
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("barre_menu_loading").Visibility = "Hidden"
    $Window.FindName("loading").Visibility = "Hidden"
    $Window.FindName("load_progress").Visibility = "Hidden"
}

function show_nb_ram(){
    $Window.FindName("fond2").Visibility = "Visible"
    $Window.FindName("barre_menu__select_ram").Visibility = "Visible"
    $Window.FindName("text_ram").Visibility = "Visible"
    $Window.FindName("menu_select_size_ram").Visibility = "Visible"
}
function hide_nb_ram(){
    $Window.FindName("fond2").Visibility = "Hidden"
    $Window.FindName("barre_menu__select_ram").Visibility = "Hidden"
    $Window.FindName("text_ram").Visibility = "Hidden"
    $Window.FindName("menu_select_size_ram").Visibility = "Hidden"
}

# De base non affichés :
hide_start_main_folder
hide_select_old_folder
hide_select_fichier_jar
hide_select_fichier_recap
hide_loading
hide_nb_ram

#Ouvrir la page de téléchargements
$Window.FindName("open_website").add_click({
    Start-Process $site_serveur_minecraft
})

#Mise à jour du serveur
$Window.FindName("start").add_click({
    #Vérifie si Java est installé sur l'ordinateur
    if ((Test-Path -Path "C:\Program Files\Java\jdk-18.*") -eq $true) {
        #Vérification réussie
        select_folder
    } else {
        #Echec de la vérification
        [System.Windows.MessageBox]::Show("Java 18 n'est pas installé sur cet ordinateur",'Erreur','ok','Error')

        $msgBoxInputAskFastRoot = [System.Windows.MessageBox]::Show('Voulez-vous ouvrir la page internet de Java ?','Aller sur Java.com ?','YesNo','Question')

        switch ($msgBoxInputAskFastRoot)
        {
            'Yes'
            {
                Start-Process $download_java
            }
        }
    }
})

function select_folder()
{
$global:folder = $null

    hide_menu
    show_start_main_folder
    $Window.FindName("exit_window_select_folder_dest").add_click({
        reload
    })

    $Window.FindName("browse_folder_dest").add_click({
        Add-Type -AssemblyName System.Windows.Forms
        $foldername = New-Object System.Windows.Forms.FolderBrowserDialog
        $foldername.Description = "Sélectionnez le dossier de destination"
        $foldername.SelectedPath = $mydocuments = [environment]::getfolderpath("mydocuments")

            if($foldername.ShowDialog() -eq "OK")
            {
                $global:folder = $foldername.SelectedPath
                [System.Windows.MessageBox]::Show("Le dossier est à présent : $global:folder")
            }
    })

        $Window.FindName("next_folder_dest").add_click({
            if($global:folder -eq $null)
            {
                #Echec de la vérification
                [System.Windows.MessageBox]::Show("Vous devez d'abord sélectionner un dossier",'Erreur','ok','Error')
            } else {
                select_old_folder
            }
        })
}

function select_old_folder(){
    $global:oldfolder = $null

    hide_start_main_folder
    show_select_old_folder

    $Window.FindName("exit_window_select_folder_old").add_click({
        reload
    })

    $Window.FindName("browse_folder_old").add_click({
        Add-Type -AssemblyName System.Windows.Forms
        $oldfoldername = New-Object System.Windows.Forms.FolderBrowserDialog
        $oldfoldername.Description = "Sélectionnez le dossier de destination"
        $oldfoldername.SelectedPath = $mydocuments = [environment]::getfolderpath("mydocuments")

            if($oldfoldername.ShowDialog() -eq "OK")
            {
                $global:oldfolder = $oldfoldername.SelectedPath
                [System.Windows.MessageBox]::Show("Le dossier est à présent : $global:oldfolder")
            }
    })

        $Window.FindName("next_folder_old").add_click({
            if($global:oldfolder -eq $null)
            {
                #Echec de la vérification
                [System.Windows.MessageBox]::Show("Vous devez d'abord sélectionner un dossier",'Erreur','ok','Error')
            } else {
                select_fichier_jar
            }
        })
}

function select_fichier_jar(){

    $global:jar = $null

    hide_select_old_folder
    show_select_fichier_jar

    $Window.FindName("exit_window_select_fichier_jar").add_click({
        reload
    })

    $Window.FindName("browse_fichier_jar").add_click({
        Add-Type -AssemblyName System.Windows.Forms #afin de savoir le lancer sans ps ISE
        $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('CommonDocuments') }
            #Afficher la fenêtre de selection
        $null = $FileBrowser.ShowDialog()
            #Récupérer le nom du fichier
        $global:jar = $FileBrowser.filename
        $global:jar_long_path = "$global:jar" #Pour prendre en compte les espaces

        if ($global:jar -Like "*.jar") {
            [System.Windows.MessageBox]::Show("Le fichier sélectionné est : $jar")
        } else  {
            [System.Windows.MessageBox]::Show("Veillez selectionner le nouveau serveur au format ' .jar '",'Erreur','ok','Error')
        }
    })

    $Window.FindName("next_fichier_jar").add_click({
        if ($global:jar -Like "*.jar") {
            check
        } else  {
            [System.Windows.MessageBox]::Show("Veillez selectionner le nouveau serveur au format ' .jar '",'Erreur','ok','Error')
        }
    })
}

function check(){
    hide_select_fichier_jar

    $OutputBox1 = $Window.FindName('OutputBox1')
    $OutputBox1.AppendText(($global:folder))

    $OutputBox2 = $Window.FindName('OutputBox2')
    $OutputBox2.AppendText(($global:oldfolder))

    $OutputBox3 = $Window.FindName('OutputBox3')
    $OutputBox3.AppendText(($global:jar))

    show_select_fichier_recap

    $Window.FindName("cancel_fichier_recap").add_click({
        reload
    })

    $Window.FindName("next_fichier_recap").add_click({
        hide_select_fichier_recap
        show_loading
        [System.Windows.MessageBox]::Show('Début des opérations','Information','ok','Information')
        update
    })
}

function update(){
    #$global:progress = "0"

    #backup
    [string]$date = Get-Date -Format "dd-MM-yyyy-HH-mm"
    [string]$name = "Backup"
    [string]$folder_backup = "$name"+"_"+"$date"
    [string]$folder_save = "$global:folder\$folder_backup"
    
    New-Item -Path $folder_save -ItemType Directory -Force
    Copy-Item -Path $global:oldfolder -Destination $folder_save -Recurse

    #Copie de l'ancien serveur vers le nouveau dossier
    Copy-Item $global:oldfolder\* -Destination $global:folder -Recurse
    #Supression de l'ancien serveur
    Remove-Item $global:folder\server.jar
    #Copie du nouveau serveur
    Copy-Item $global:jar_long_path -Destination $global:folder -Recurse

    [System.Windows.MessageBox]::Show('Mise à jour réussie','Information','ok','Information')
    memory
}

function memory(){
    hide_loading
    show_nb_ram

    Remove-Item $global:folder\Launcher.bat -ErrorAction SilentlyContinue

    $Window.FindName("two_memory").add_click({
        Copy-Item "$PSScriptRoot\Ressources\memory\2gb\Launcher.bat" -Destination $global:folder
        completion
    })
    $Window.FindName("four_memory").add_click({
        Copy-Item "$PSScriptRoot\Ressources\memory\4gb\Launcher.bat" -Destination $global:folder
        completion
    })
    $Window.FindName("eight_memory").add_click({
        Copy-Item "$PSScriptRoot\Ressources\memory\8gb\Launcher.bat" -Destination $global:folder
        completion
    })
    $Window.FindName("sixteen_memory").add_click({
        Copy-Item "$PSScriptRoot\Ressources\memory\16gb\Launcher.bat" -Destination $global:folder
        completion
    })
}
# create_shortcut
function completion(){
    hide_nb_ram

$msgBoxCreate_shortcut = [System.Windows.MessageBox]::Show('Voulez-vous créer un raccourci sur le bureau ?','Créer un raccourci ?','YesNo','Question')

    switch($msgBoxCreate_shortcut)
    {
        'Yes'
        {
            create_shortcut        
        }
    }
$msgBoxrun = [System.Windows.MessageBox]::Show('Mise à jour terminée. Voulez-vous lancer le serveur ?','Lancer le serveur ?','YesNo','Question')
    switch($msgBoxrun)
    {
        'Yes'
        {
            run_server
            exit      
        }
    }

    [System.Windows.MessageBox]::Show('Mise à jour terminée. Appuyez sur OK pour fermer le programme','Information','ok','Information')
    exit
}

function run_server(){
    cd $global:folder
    Start-Process "Launcher.bat"
}

function create_shortcut(){
    $link = New-Object -ComObject WScript.Shell
    $shortcut = $link.CreateShortcut("$HOME\Desktop\Serveur Minecraft.lnk")
    $shortcut.TargetPath = "$global:folder\Launcher.bat"
    $shortcut.Save()
}

function reload(){
    hide_start_main_folder
    hide_menu
    $Window.FindName("fond2").Visibility = "Visible"
    cd $PSScriptRoot\Ressources
    invoke-expression -Command .\reload.ps1
    exit
}

# A propos
hide_about
$Window.FindName("about").add_click({
    hide_menu
    show_about

    $Window.FindName("exit_about").add_click({
        show_menu
        hide_about
    })
})

$Window.FindName("exit").add_click({
$msgBoxInputExit = [System.Windows.MessageBox]::Show('Voulez-vous fermer le programme ?','Quitter ?','YesNo','Question')

    switch($msgBoxInputExit)
    {
        'Yes'
        {
            exit        
        }
    }
})

#Afficher l'interface graphique
$Window.ShowDialog()
$FormXML = (New-Object System.Xml.XmlNodeReader $XML)
$Window = [Windows.Markup.XamlReader]::Load($FormXML)