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
	system("touch ./".$name."/".$name.".html");
	system("touch ./".$name."/css/".$name.".css");
	system("touch ./".$name."/script/".$name.".js");

	print("\n\nUtilisez vous Bootstrap ? [y/n] : ");
	my $boot = <>;
	chomp($boot);
	
	print("\n\nUtilisez vous JQuery ? [y/n] : ");
	my $jque = <>;
	chomp($jque);
	
	if ($boot eq "y" && $jque eq "y" || $boot eq "yes" && $jque eq "yes")
	{
		system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<script type=\"text/javascript\" src=\"./script/jquery.js\"></script>\n\t\t<script type=\"text/javascript\" src=\"./script/".$name.".js\"></script>\n\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"./css/bootstrap.css\">\n\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"./css/".$name.".css\">\n\t\t<title>".$name."</title>\n\t\t<meta charset=\"utf-8\">\n\t</head>\n\t<body>\n\t</body>\n</html>\" > ./".$name."/".$name.".html"); 
	}

	elsif ($boot eq "y" && $jque eq "n" || $boot eq "yes" && $jque eq "no")
	{
		system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<script type=\"text/javascript\" src=\"./script/".$name.".js\"></script>\n\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"./css/bootstrap.css\">\n\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"./css/".$name.".css\">\n\t\t<title>".$name."</title>\n\t\t<meta charset=\"utf-8\">\n\t</head>\n\t<body>\n\t</body>\n</html>\" > ./".$name."/".$name.".html"); 
	}

	elsif ($boot eq "n" && $jque eq "y" || $boot eq "no" && $jque eq "yes")
	{
		system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<script type=\"text/javascript\" src=\"./script/jquery.js\"></script>\n\t\t<script type=\"text/javascript\" src=\"./script/".$name.".js\"></script>\n\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"./css/".$name.".css\">\n\t\t<title>".$name."</title>\n\t\t<meta charset=\"utf-8\">\n\t</head>\n\t<body>\n\t</body>\n</html>\" > ./".$name."/".$name.".html"); 
	}

	else
	{
		system("echo \"<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<script type=\"text/javascript\" src=\"./script/".$name.".js\"></script>\n\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"./css/".$name.".css\">\n\t\t<title>".$name."</title>\n\t\t<meta charset=\"utf-8\">\n\t</head>\n\t<body>\n\t</body>\n</html>\" > ./".$name."/".$name.".html"); 
	}
	
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
