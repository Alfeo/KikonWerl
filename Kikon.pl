system("clear");
print("\tWelcome to Kikon ! | By Alfeo\n");
print("-" x 50 . "\n\n");
print("\t1 - Nouveau Projet Html\n");
print("\t2 - Nouveau Projet PHP\n");
print("\t3 - A Propos de Kikon\n");
print("\t4 - Quitter\n\n");
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
	system("touch ./".$name."/".$name.".html");
	system("touch ./".$name."/css/".$name.".css");
	system("touch ./".$name."/script/".$name.".js");

	print("\n\nUtilisez vous JQuery ? [y/n] : ");
	my $jque = <>;
	chomp($jque);

	system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\" >> ./".$name."/".$name.".html");

	if ($jque eq "y" || $jque eq "yes" || $jque eq "YES "|| $jque eq "Y")
	{
		print("\n\nEntrer Le Chemin vers '/jquery.js' : ");
		my $pathj = <>;
		chomp($pathj);
		system("cp ".$pathj."/jquery.js ./".$name."/script");
		system("echo \"\t\t<script type='text/javascript' src='./script/jquery.js'></script>\" >> ./".$name."/".$name.".html");
		system("sleep 0.1");
		system("echo \"jquery.js has been imported !\"")
	}
	
	system("echo \"\t\t<script type='text/javascript' src='./script/".$name.".js'></script>\" >> ./".$name."/".$name.".html");
	
	print("\n\nUtilisez vous Bootstrap ? [y/n] : ");
	my $boot = <>;
	chomp($boot);
	
	if ($boot eq "y" || $boot eq "yes" || $boot eq "YES "|| $boot eq "Y")
	{
		print("\n\nEntrer Le Chemin vers '/bootstrap.css' : ");
		my $pathb = <>;
		chomp($pathb);
		system("cp ".$pathb."/bootstrap.css ./".$name."/css");
		system("echo \"\t\t<link type='text/css' rel='stylesheet' href='./css/bootstrap.css'>\" >> ./".$name."/".$name.".html"); 
		system("sleep 0.1");
		system("echo \"bootstrap.css has been imported !\"")
	}

	system("echo \"\t\t<link type='text/css' rel='stylesheet' href='./css/".$name.".css'>\n\t\t<title>".$name."</title>\n\t\t<meta charset='utf-8'>\n\t</head>\n\t<body>\n\t</body>\n</html>\" >> ./".$name."/".$name.".html"); 
	
	print("\n\nVotre projet à été généré :) ! Appuyer sur ENTREE pour quitter.");
	<>;
	system("clear");
	system("exit");
}

if ($choice == "2")
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
	system("mkdir ./".$name."/php");
	system("mkdir ./".$name."/sql");
	system("sleep 0.1");
	system("touch ./".$name."/php/".$name.".php");
	system("touch ./".$name."/css/".$name.".css");
	system("touch ./".$name."/script/".$name.".js");

	print("\n\nUtilisez vous JQuery ? [y/n] : ");
	my $jque = <>;
	chomp($jque);

	system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\" >> ./".$name."/php/".$name.".php");

	if ($jque eq "y" || $jque eq "yes" || $jque eq "YES "|| $jque eq "Y")
	{
		print("\n\nEntrer Le Chemin vers '/jquery.js' : ");
		my $pathj = <>;
		chomp($pathj);
		system("cp ".$pathj."/jquery.js ./".$name."/script");
		system("echo \"\t\t<script type='text/javascript' src='../script/jquery.js'></script>\" >> ./".$name."/php/".$name.".php");
		system("sleep 0.1");
		system("echo \"jquery.js has been imported !\"")
	}
	
	system("echo \"\t\t<script type='text/javascript' src='../script/".$name.".js'></script>\" >> ./".$name."/php/".$name.".php");
	
	print("\n\nUtilisez vous Bootstrap ? [y/n] : ");
	my $boot = <>;
	chomp($boot);
	
	if ($boot eq "y" || $boot eq "yes" || $boot eq "YES "|| $boot eq "Y")
	{
		print("\n\nEntrer Le Chemin vers '/bootstrap.css' : ");
		my $pathb = <>;
		chomp($pathb);
		system("cp ".$pathb."/bootstrap.css ./".$name."/css");
		system("echo \"\t\t<link type='text/css' rel='stylesheet' href='../css/bootstrap.css'>\" >> ./".$name."/php/".$name.".php"); 
		system("sleep 0.1");
		system("echo \"bootstrap.css has been imported !\"")
	}

	system("echo \"\t\t<link type='text/css' rel='stylesheet' href='../css/".$name.".css'>\n\t\t<title>".$name."</title>\n\t\t<meta charset='utf-8'>\n\t</head>\n\t<body>\n\t</body>\n</html>\" >> ./".$name."/php/".$name.".php"); 
	
	print("\n\nVotre projet à été généré :) ! Appuyer sur ENTREE pour quitter.");
	<>;
	system("clear");
	system("exit");
}

elsif ($choice == 3)
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
