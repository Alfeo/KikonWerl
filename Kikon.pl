system("clear");
print("\tWelcome to Kikon ! | By Alfeo\n");
print("-" x 50 . "\n\n");
print("\t1 - Nouveau Projet Html\n");
print("\t2 - A Propos de Kikon\n");
print("\t3 - Quitter\n\n");
print("Option : ");

my $choice = <>;

if ($choice == "1")
{
	print("\n\nVeuillez choisir un nom pour votre projet (Sans espaces) [untitled] : ");
	
	my $name = <>;
	chomp($name);
	
	if($name eq "")
	{
		$name = "untitled";
	}

	system("mkdir ".$name);
	system("sleep 0.1");
	system("mkdir ./".$name."/css");
	system("mkdir ./".$name."/script");
	system("mkdir ./".$name."/img");
	system("sleep 0.1");
	system("touch ./".$name."/index.html");
	system("touch ./".$name."/css/style.css");
	system("touch ./".$name."/script/script.js");

	system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<link type='text/css' rel='stylesheet' href='./css/style.css'>\" >> ./".$name."/index.html");

	print("\n\nUtilisez vous JQuery ? [y/n] : ");
	my $jque = <>;
	chomp($jque);

	if ($jque eq "y" || $jque eq "yes" || $jque eq "YES "|| $jque eq "Y")
	{
		system("touch ./".$name."/script/jquery.js");
		system("curl 'http://code.jquery.com/jquery-2.0.0.js' > ./".$name."/script/jquery.js");
		system("echo \"\t\t<script type='text/javascript' src='./script/jquery.js'></script>\" >> ./".$name."/index.html");
		system("sleep 0.1");
		system("echo \"jquery.js has been imported !\"")
	}
	
	system("echo \"\t\t<script type='text/javascript' src='./script/script.js'></script>\n\t\t<title>".$name."</title>\n\t\t<meta charset='utf-8'>\n\t</head>\n\t<body>\n\t</body>\n</html>\" >> ./".$name."/index.html");
	
	print("\n\nVotre projet à été généré :) ! Appuyer sur ENTREE pour quitter.");
	<>;
	system("clear");
	system("exit");
}

elsif ($choice == 2)
{
	print("\n\tKikon est un script qui va vous permettre de commencer 
				\n\tfacilement un nouveau projet. Vous n'avez plus besoin de 
				\n\tcréer vos fichiers/dossiers à la main. Kikon s'en charge !");
	<>;
	system("perl Kikon.pl");
}

else
{
	system("clear");
	system("exit");
}
