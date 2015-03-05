system("clear");

#1 - Create Folders
print("Project's Name ? : ");
my $name = <>;
chomp($name);

system("mkdir ./".$name);
system("sleep 0.1");

system("touch ./".$name."/".$name.".html");

system("mkdir ./".$name."/css");
system("sleep 0.1");

system("touch ./".$name."/css/".$name.".css");

system("echo \"<!DOCTYPE html>\n\t<head>\n\t\t<link type='text/css' rel='stylesheet' href='./css/".$name.".css'\n\t\t<meta charset='utf-8'>\n\t\t<title>".$name."</title>\n\t</head>\n\t<body>\" > ./".$name."/".$name.".html");

print("\n1st Part COMPLETE !");
print("\nEnterring Create Process...");
system("sleep 0.1");

#2 - Create Divs
while(1)
{
	print("\nDo you want to create a div ? [y / n] : ");
	my $choice = <>;
	chomp($choice);
	
	if ($choice eq "y")
	{
		print("Div's Name ? : ");
		my $divname = <>;
		chomp($divname);
		system("echo \"\t\t<div class='".$divname."'></div>\" >> ./".$name."/".$name.".html");
		
		print("Do you want to add attributes ? [y / n] : ");
		my $choicebis = <>;
		chomp($choicebis);

		if ($choicebis eq "y")
		{
			system("echo \".".$divname."\n{\" >> ./".$name."/css/".$name.".css");
			my $endat = 1;
			chomp($endat);

			while ($endat == 1)
			{
				print("Div's Instruction ? : ");
				my $divcss = <>;
				chomp($divcss);

				print("Div's Attribute ? : ");
				my $divcssbis = <>;
				chomp($divcssbis);
				
				system("echo \"\t".$divcss.":".$divcssbis.";\" >> ./".$name."/css/".$name.".css");
				print("Do you want to add some other instructions ? [y / n]");
				my $choicebisbis = <>;
				chomp($choicebisbis);
				if ($choicebisbis eq "n")
				{
					$endat = 0;
				}
			}
		}
		system("echo \"}\" >> ./".$name."/css/".$name.".css");
		print("Div CREATED ! :D");
	}
	else
	{
		system("echo \"\t</body>\n</html>\" >> ./".$name."/".$name.".html");
		system("pkill perl");
	}
}
