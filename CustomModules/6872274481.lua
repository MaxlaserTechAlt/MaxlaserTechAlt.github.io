
do do shared.MaxUiXLoaded=true;local v1=loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))();local v2=v1.CreateLib("MaxUi X | Game","BloodTheme");local v3=loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/entityHandler.lua",true))();local v4=game.Players.LocalPlayer;local v5=game:GetService("Players");local v6=workspace.CurrentCamera;local v7=tick();local v8=isnetworkowner or function(v45)local v46=0;local v47;while true do if (v46==0) then v47=0;while true do if (v47==0) then local v153=0;while true do if (v153==0) then if (gethiddenproperty(v45,"NetworkOwnershipRule")==Enum.NetworkOwnership.Manual) then local v208=0;local v209;while true do if (v208==0) then v209=0;while true do if (v209==0) then sethiddenproperty(v45,"NetworkOwnershipRule",Enum.NetworkOwnership.Automatic);v7=tick() + 8 ;break;end end break;end end end return v7<=tick() ;end end end end break;end end end ;do local v48=0;local v49;while true do if (v48==0) then v49=v3.characterAdded;v3.characterAdded=function(v142,v143,v144)return v49(v142,v143,v144,function()end);end;v48=1;end if (v48==1) then v3.fullEntityRefresh();break;end end end local v9=getsynasset or getcustomasset or function(v50)return "rbxasset://"   .. v50 ;end ;local v10=getassetid or assetrbx or getrobloxpic or function(v51)return "rbxassetid://"   .. v51 ;end ;local v11=(syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport) or function()end ;local v12=game:GetService("UserInputService");local v13=debug.getupvalue(require(v4.PlayerScripts.TS.knit).setup,6);local v14=require(game:GetService("ReplicatedStorage").TS.remotes).default.Client;local v15=function(v52)local v53=0;local v54;local v55;while true do if (1==v53) then while true do if (v54==0) then v55=0;while true do if (v55==0) then local v183=0;local v184;while true do if (v183==0) then v184=0;while true do if (v184==0) then for v234,v235 in pairs(v52) do if (v235=="Client") then return v52[v234 + 1 ];end end return "";end end break;end end end end break;end end break;end if (v53==0) then v54=0;v55=nil;v53=1;end end end;local v16={SprintController=v13.Controllers.SprintController,ClientHandlerStore=require(v4.PlayerScripts.TS.ui.store).ClientStore,KnockbackUtil=require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil,PingController=require(v4.PlayerScripts.TS.controllers.game.ping["ping-controller"]).PingController,DamageIndicator=v13.Controllers.DamageIndicatorController.spawnDamageIndicator,SwordController=v13.Controllers.SwordController,ViewmodelController=v13.Controllers.ViewmodelController,SwordRemote=v15(debug.getconstants(v13.Controllers.SwordController.attackEntity))};function isAlive(v56)local v57=0;while true do if (v57==2) then return true;end if (v57==1) then if  not v56.Character:FindFirstChild("Head") then return false;end if  not v56.Character:FindFirstChild("Humanoid") then return false;end v57=2;end if (0==v57) then v56=v56 or v4 ;if  not v56.Character then return false;end v57=1;end end end function canwalk(v58)local v59=0;local v60;while true do local v111=0;while true do if (v111==0) then if (v59==3) then return true;end if (v59==0) then local v154=0;while true do if (v154==1) then v59=1;break;end if (v154==0) then v58=v58 or v4 ;if  not v58.Character then return false;end v154=1;end end end v111=1;end if (v111==1) then if (v59==2) then if (v60==Enum.HumanoidStateType.Dead) then return false;end if (v60==Enum.HumanoidStateType.Ragdoll) then return false;end v59=3;end if (v59==1) then local v155=0;while true do if (1==v155) then v59=2;break;end if (v155==0) then if  not v58.Character:FindFirstChild("Humanoid") then return false;end v60=v58.Character:FindFirstChild("Humanoid"):GetState();v155=1;end end end break;end end end end function getbeds()local v61=0;local v62;local v63;while true do if (v61==1) then while true do if (v62==0) then v63={};for v169,v170 in pairs(game:GetService("Workspace"):GetChildren()) do if ((string.lower(v170.Name)=="bed") and (v170:FindFirstChild("Covers")~=nil) and (v170:FindFirstChild("Covers").Color~=v4.Team.TeamColor)) then table.insert(v63,v170);end end v62=1;end if (v62==1) then return v63;end end break;end if (v61==0) then v62=0;v63=nil;v61=1;end end end function getplayers()local v64=0;local v65;while true do if (v64==0) then v65={};for v145,v146 in pairs(game:GetService("Players"):GetPlayers()) do if ((v146.Team~=v4.Team) and isAlive(v146) and (v146.Character:FindFirstChild("Humanoid").Health>0.11)) then table.insert(v65,v146);end end v64=1;end if (v64==1) then return v65;end end end function getserverpos(v66)local v67=0;local v68;local v69;local v70;local v71;local v72;while true do if (v67==2) then v72=nil;while true do if (v68==2) then while true do local v171=0;while true do if (v171==0) then if (v69==1) then local v211=0;while true do if (v211==0) then v72=math.round(v66.Z/3 );return Vector3.new(v70,v71,v72);end end end if (v69==0) then v70=math.round(v66.X/3 );v71=math.round(v66.Y/3 );v69=1;end break;end end end break;end if (v68==0) then v69=0;v70=nil;v68=1;end if (v68==1) then v71=nil;v72=nil;v68=2;end end break;end if (0==v67) then v68=0;v69=nil;v67=1;end if (v67==1) then v70=nil;v71=nil;v67=2;end end end function getnearestplayer(v73)local v74=v4;local v75=math.huge;for v112,v113 in pairs(game:GetService("Players"):GetChildren()) do if ((v113.Team~=v4.Team) and (v113~=v4) and isAlive(v113) and isAlive(v4)) then local v135=0;local v136;local v137;while true do if (1==v135) then while true do if (v136==0) then v137=(v113.Character:FindFirstChild("HumanoidRootPart").Position-v4.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude;if ((v137<v75) and (v137<v73)) then local v210=0;while true do if (v210==0) then v75=v137;v74=v113;break;end end end break;end end break;end if (v135==0) then v136=0;v137=nil;v135=1;end end end end return v74;end function getmatchstate()return v16['ClientHandlerStore']:getState().Game.matchState;end function getqueuetype()local v76=0;local v77;local v78;while true do if (v76==0) then v77=0;v78=nil;v76=1;end if (v76==1) then while true do if (v77==0) then v78=v16['ClientHandlerStore']:getState();return v78.Game.queueType or "bedwars_test" ;end end break;end end end function getitem(v79)local v80=0;local v81;while true do if (v80==0) then v81=0;while true do if (v81==0) then local v156=0;while true do if (v156==0) then local v186=0;while true do if (v186==0) then if (isAlive(v4) and v4.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild(v79)) then return true;end return false;end end end end end end break;end end end function bedremove()if (v4.leaderstats.Bed.Value~="✅") then game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Do u think i care about my bed? | Zephyr Always On Top","All");end end local v17=v2:NewTab("Combat");local v18=v2:NewTab("Blatant");local v19=v2:NewTab("Render");local v20=v2:NewTab("Utillity");local v21=v2:NewTab("World");local v22=v17:NewSection("Combat");local v23=v18:NewSection("Blatant");local v24=v19:NewSection("Render");local v25=v20:NewSection("Utillity");local v26=v21:NewSection("World");local v27=false;v22:NewToggle("Sprint","Automatic Sprinting For You I think?",function(v82)if v82 then local v123=0;local v124;while true do if (v123==0) then v124=0;while true do if (v124==0) then v27=true;repeat local v187=0;local v188;while true do if (v187==0) then v188=0;while true do if (0==v188) then task.wait();if  not v16['SprintController'].sprinting then v16['SprintController']:startSprinting();end break;end end break;end end until  not v27 break;end end break;end end else v27=false;end end);local v27=false;local v28={Value=val};v22:NewToggle("Reach","Change Reach",function(v83)if v83 then local v125=0;local v126;while true do if (v125==0) then v126=0;while true do if (v126==0) then v27=true;CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE=v28['Value'] -0.0001 ;break;end end break;end end else local v127=0;local v128;while true do if (v127==0) then v128=0;while true do if (v128==0) then CombatConstant.RACombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE=14.4;v27=false;break;end end break;end end end end);v22:NewSlider("Reach Value","Value OF Reach",17,0.1,function(v84)v28['Value']=v84;end);local v29=require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsSwords;function hashFunc(v86)return {value=v86};end local function v30(v87)local v88=0;local v89;local v90;local v91;while true do if (v88==1) then v91=nil;while true do local v147=0;while true do if (v147==0) then local v172=0;while true do if (v172==1) then v147=1;break;end if (v172==0) then if (v89==1) then local v212=0;while true do if (0==v212) then local v233=0;while true do if (v233==0) then if  not v90 then return {items={},armor={}};end if (v87.Character and v87.Character:FindFirstChild("InventoryFolder")) then local v246=0;local v247;while true do if (v246==0) then v247=v87.Character:FindFirstChild("InventoryFolder").Value;if  not v247 then return v91;end v246=1;end if (v246==1) then for v249,v250 in next,v91 do local v251=0;while true do if (v251==0) then for v258,v259 in next,v250 do if ((typeof(v259)=="table") and v259.itemType) then v259.instance=v247:FindFirstChild(v259.itemType);end end if ((typeof(v250)=="table") and v250.itemType) then v250.instance=v247:FindFirstChild(v250.itemType);end break;end end end break;end end end v233=1;end if (v233==1) then v212=1;break;end end end if (v212==1) then v89=2;break;end end end if (v89==2) then return v91;end v172=1;end end end if (v147==1) then if (v89==0) then local v189=0;while true do if (v189==1) then v89=1;break;end if (v189==0) then local v213=0;while true do if (v213==1) then v189=1;break;end if (v213==0) then if  not v87 then return {items={},armor={}};end v90,v91=pcall(function()return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(v87);end);v213=1;end end end end end break;end end end break;end if (v88==0) then local v138=0;while true do if (v138==1) then v88=1;break;end if (v138==0) then v89=0;v90=nil;v138=1;end end end end end local function v31()local v92=0;local v93;local v94;while true do local v114=0;while true do if (0==v114) then if (v92==0) then local v157=0;while true do if (v157==0) then local v190=0;while true do if (0==v190) then v93,v94= -8999999488,nil;for v220,v221 in next,v30(v4).items do local v222=0;local v223;while true do if (v222==0) then local v236=0;while true do if (v236==0) then v223=table.find(v29,v221.itemType);if  not v223 then continue;end v236=1;end if (v236==1) then v222=1;break;end end end if (v222==1) then if (v223>v93) then local v238=0;local v239;while true do if (v238==0) then v239=0;while true do if (0==v239) then v94=v221;v93=v223;break;end end break;end end end break;end end end v190=1;end if (1==v190) then v157=1;break;end end end if (v157==1) then v92=1;break;end end end if (v92==1) then return v94;end break;end end end end local function v32(v95,v96,v97)if (RenderStepTable[v95]==nil) then RenderStepTable[v95]=game:GetService("RunService").RenderStepped:connect(v97);end end local function v33(v98)if RenderStepTable[v98] then RenderStepTable[v98]:Disconnect();RenderStepTable[v98]=nil;end end local function v34(v99,v100,v101)if (StepTable[v99]==nil) then StepTable[v99]=game:GetService("RunService").Stepped:connect(v101);end end local function v35(v102)if StepTable[v102] then local v132=0;local v133;while true do if (0==v132) then v133=0;while true do if (v133==0) then StepTable[v102]:Disconnect();StepTable[v102]=nil;break;end end break;end end end end local v27=false;local v36=v14:Get(v16['SwordRemote']);local v37=game.ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0;local v38={AutoBlockBuggy={{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad(220),math.rad(100),math.rad(100)) ,Time=0.25},{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) ,Time=0.25}},Weird={{CFrame=CFrame.new(0,0,1.5) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) ,Time=0.25},{CFrame=CFrame.new(0,0, -1.5) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) ,Time=0.25}},AutoBlock1={{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad( -90),math.rad(90),math.rad(90)) ,Time=0.25}},AutoBlock2={{CFrame=CFrame.new(0, -1,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)) ,Time=0.3}},VerticalSpin={{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad( -90),math.rad(8),math.rad(5)) ,Time=0.25},{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad(180),math.rad(3),math.rad(13)) ,Time=0.25},{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad( -5),math.rad(8)) ,Time=0.25},{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) ,Time=0.25}},Zyla={{CFrame=CFrame.new(0.3, -2,0.5) * CFrame.Angles( -math.rad(190),math.rad(110), -math.rad(90)) ,Time=0.3},{CFrame=CFrame.new(0.3, -1.5,1.5) * CFrame.Angles(math.rad(120),math.rad(140),math.rad(320)) ,Time=0.1}},Spinny={{CFrame=CFrame.new(1, -0.5,0.5) * CFrame.Angles(math.rad( -30),math.rad(0),math.rad(0)) ,Time=0.1},{CFrame=CFrame.new(1, -0.5,0.5) * CFrame.Angles(math.rad( -120),math.rad(0),math.rad(0)) ,Time=0.1},{CFrame=CFrame.new(1, -0.5,0.5) * CFrame.Angles(math.rad( -180),math.rad(0),math.rad(0)) ,Time=0.1},{CFrame=CFrame.new(1, -0.5,0.5) * CFrame.Angles(math.rad( -240),math.rad(0),math.rad(0)) ,Time=0.1},{CFrame=CFrame.new(1, -0.5,0.5) * CFrame.Angles(math.rad( -300),math.rad(0),math.rad(0)) ,Time=0.1},{CFrame=CFrame.new(1, -0.5,0.5) * CFrame.Angles(math.rad( -360),math.rad(0),math.rad(0)) ,Time=0.1}}};local v39={{CFrame=CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)) ,Time=0.25}};local v40=false;local v41=false;local v42={Value=0.11};local v43=true;local v44={};for v103,v104 in next,v38 do v44[ #v44 + 1 ]=v103;end v23:NewToggle("Aura","",function(v106)if v106 then spawn(function()local v139=0;local v140;local v141;while true do if (v139==0) then v140=0;v141=nil;v139=1;end if (v139==1) then while true do if (v140==0) then v141=0;while true do if (v141==1) then while task.wait(v42['Value']) do local v224=0;local v225;while true do if (v224==1) then if ((v225.Team~=v4.Team) and isAlive(v225) and isAlive(v4) and  not v225.Character:FindFirstChild("ForceField")) then local v240=0;local v241;local v242;while true do if (1==v240) then while true do if (v241==1) then if (v242~=nil) then local v252=0;local v253;local v254;while true do if (v252==0) then v253=0;v254=nil;v252=1;end if (v252==1) then while true do if (v253==0) then v254=0;while true do if (v254==0) then local v269=0;local v270;while true do if (v269==0) then v270=0;while true do if (v270==1) then v254=1;break;end if (v270==0) then local v271=0;while true do if (v271==0) then v16['SwordController'].lastAttack=game:GetService("Workspace"):GetServerTimeNow() -0.11 ;v36:SendToServer({weapon=v242.tool,entityInstance=v225.Character,validate={raycast={cameraPosition=hashFunc(v6.CFrame.Position),cursorDirection=hashFunc(Ray.new(v6.CFrame.Position,v225.Character:FindFirstChild("HumanoidRootPart").Position).Unit.Direction)},targetPosition=hashFunc(v225.Character:FindFirstChild("HumanoidRootPart").Position),selfPosition=hashFunc(v4.Character:FindFirstChild("HumanoidRootPart").Position + ((((v4.Character:FindFirstChild("HumanoidRootPart").Position-v225.Character:FindFirstChild("HumanoidRootPart").Position).magnitude>14) and (CFrame.lookAt(v4.Character:FindFirstChild("HumanoidRootPart").Position,v225.Character:FindFirstChild("HumanoidRootPart").Position).LookVector * 4)) or Vector3.new(0,0,0)) )},chargedAttack={chargeRatio=1}});v271=1;end if (v271==1) then v270=1;break;end end end end break;end end end if (v254==1) then spawn(function()if getitem("bear_claw") then v36:SendToServer({weapon=v4.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild("bear_claw"),entityInstance=v225.Character,validate={raycast={cameraPosition=hashFunc(v6.CFrame.Position),cursorDirection=hashFunc(Ray.new(v6.CFrame.Position,v225.Character:FindFirstChild("HumanoidRootPart").Position).Unit.Direction)},targetPosition=hashFunc(v225.Character:FindFirstChild("HumanoidRootPart").Position),selfPosition=hashFunc(v4.Character:FindFirstChild("HumanoidRootPart").Position)},chargedAttack={chargeRatio=1}});end end);break;end end break;end end break;end end end break;end if (v241==0) then v242=v31();spawn(function()if v43 then local v255=0;local v256;local v257;while true do if (v255==0) then v256=Instance.new("Animation");v256.AnimationId="rbxassetid://4947108314";v255=1;end if (v255==1) then local v263=0;while true do if (v263==1) then v255=2;break;end if (v263==0) then v257=v4.Character:FindFirstChild("Humanoid"):FindFirstChild("Animator");v257:LoadAnimation(v256):Play();v263=1;end end end if (v255==2) then for v264,v265 in pairs(v38[animswing['Value']]) do local v266=0;local v267;local v268;while true do if (v266==0) then v267=0;v268=nil;v266=1;end if (v266==1) then while true do if (0==v267) then v268=0;while true do if (v268==0) then game:GetService("TweenService"):Create(v6.Viewmodel.RightHand.RightWrist,TweenInfo.new(v265.Time),{C0=v37 * v265.CFrame }):Play();task.wait(v265.Time-0.01 );break;end end break;end end break;end end end break;end end end end);v241=1;end end break;end if (v240==0) then v241=0;v242=nil;v240=1;end end else local v243=0;while true do if (v243==0) then v41=false;v27=false;break;end end end if  not v41 then for v244,v245 in pairs(v39) do game:GetService("TweenService"):Create(v6.Viewmodel.RightHand.RightWrist,TweenInfo.new(v245.Time),{C0=v37 * v245.CFrame }):Play();end end break;end if (v224==0) then if  not v27 then return;end v225=getnearestplayer(DistanceAura['Value']);v224=1;end end end break;end if (v141==0) then local v214=0;while true do if (v214==1) then v141=1;break;end if (v214==0) then repeat task.wait();until (getmatchstate()~=0) or  not v27  if  not v27 then return;end v214=1;end end end end break;end end break;end end end);end end);if (shared.MaxUiXLoaded==true) then print("loaded");else print("error");end if shared.GuiLibrary then local v115=0;local v116;local v117;local v118;local v119;while true do if (v115==1) then v118=nil;v119=nil;v115=2;end if (v115==0) then v116=0;v117=nil;v115=1;end if (v115==2) then while true do if (v116==0) then local v173=0;while true do if (v173==1) then v116=1;break;end if (v173==0) then v117=0;v118=nil;v173=1;end end end if (v116==1) then v119=nil;while true do if (v117==1) then local v202=0;while true do if (v202==1) then v119.BackgroundColor3=Color3.fromRGB(26,25,26);v117=2;break;end if (v202==0) then v119.Position=UDim2.new(1, -30,0,18);v119.Text="MaxUi";v202=1;end end end if (v117==0) then local v203=0;while true do if (v203==0) then local v229=0;while true do if (v229==1) then v203=1;break;end if (v229==0) then v118=Instance.new("ScreenGui");v118.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui");v229=1;end end end if (v203==1) then v119=Instance.new("TextButton");v117=1;break;end end end if (v117==3) then v119.BackgroundTransparency=0.5;v119.Parent=v118;v119.MouseButton1Click:Connect(function()v1:ToggleUI();end);break;end if (v117==2) then local v206=0;while true do if (v206==0) then v119.TextColor3=Color3.new(1,1,1);v119.Size=UDim2.new(0,30,0,20);v206=1;end if (v206==1) then v119.BorderSizePixel=0;v117=3;break;end end end end break;end end break;end end else local v120=0;local v121;local v122;while true do if (v120==1) then local v148=0;while true do if (v148==0) then v122.Text="MaxUi";v122.BackgroundColor3=Color3.fromRGB(26,25,26);v148=1;end if (v148==1) then v122.TextColor3=Color3.new(1,1,1);v122.Size=UDim2.new(0,30,0,20);v148=2;end if (2==v148) then v120=2;break;end end end if (0==v120) then local v149=0;while true do if (v149==2) then v120=1;break;end if (v149==0) then local v178=0;while true do if (v178==1) then v149=1;break;end if (v178==0) then v121=Instance.new("ScreenGui");v121.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui");v178=1;end end end if (v149==1) then v122=Instance.new("TextButton");v122.Position=UDim2.new(1, -30,0,0);v149=2;end end end if (2==v120) then v122.BorderSizePixel=0;v122.BackgroundTransparency=0.5;v122.Parent=v121;v122.MouseButton1Click:Connect(function()v1:ToggleUI();end);break;end end end while true do local v107=0;local v108;local v109;local v110;while true do if (v107==1) then v110=nil;while true do if (v108==1) then v110=Instance.new("TextButton");v110.Position=UDim2.new(1, -30,0,18);v110.Text="MaxUi";v110.BackgroundColor3=Color3.fromRGB(26,25,26);v110.TextColor3=Color3.new(1,1,1);v110.Size=UDim2.new(0,30,0,20);v108=2;end if (5==v108) then v110.MouseButton1Click:Connect(function()v1:ToggleUI();end);break;end if (v108==0) then local v163=0;while true do if (v163==1) then local v191=0;while true do if (v191==0) then v109=game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("ScreenGui");if v109 then v109:Destroy();end v191=1;end if (v191==1) then v163=2;break;end end end if (v163==2) then v109=Instance.new("ScreenGui");v109.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui");v163=3;end if (v163==3) then v108=1;break;end if (v163==0) then local v193=0;while true do if (v193==0) then wait();repeat task.wait();until shared.GuiLibrary v193=1;end if (1==v193) then v163=1;break;end end end end end if (4==v108) then local v164=0;while true do if (v164==0) then v110.BackgroundColor3=Color3.fromRGB(26,25,26);v110.TextColor3=Color3.new(1,1,1);v164=1;end if (2==v164) then local v196=0;while true do if (v196==1) then v164=3;break;end if (v196==0) then v110.BackgroundTransparency=0.5;v110.Parent=v109;v196=1;end end end if (v164==1) then local v197=0;while true do if (0==v197) then v110.Size=UDim2.new(0,30,0,20);v110.BorderSizePixel=0;v197=1;end if (v197==1) then v164=2;break;end end end if (v164==3) then v108=5;break;end end end if (v108==2) then local v165=0;while true do if (v165==3) then v108=3;break;end if (v165==2) then local v198=0;while true do if (v198==0) then repeat task.wait();until  not shared.GuiLibrary v109=game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("ScreenGui");v198=1;end if (v198==1) then v165=3;break;end end end if (v165==0) then v110.BorderSizePixel=0;v110.BackgroundTransparency=0.5;v165=1;end if (v165==1) then local v201=0;while true do if (v201==0) then v110.Parent=v109;v110.MouseButton1Click:Connect(function()v1:ToggleUI();end);v201=1;end if (v201==1) then v165=2;break;end end end end end if (v108==3) then if v109 then v109:Destroy();end v109=Instance.new("ScreenGui");v109.Parent=game.Players.LocalPlayer:WaitForChild("PlayerGui");v110=Instance.new("TextButton");v110.Position=UDim2.new(1, -30,0,0);v110.Text="MaxUi";v108=4;end end break;end if (v107==0) then v108=0;v109=nil;v107=1;end end end end end
