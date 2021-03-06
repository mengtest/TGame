UnityMonoUtil = {}

function UnityMonoUtil.FindChild(go,url)
	return go.transform:FindChild(url).gameObject;
end

function UnityMonoUtil.Find(name)
	return GameObject.Find(name);
end

function UnityMonoUtil.AddOnClick(lb,go,func,...)
	lb:AddClickArgs(go,func,{...});
end

function UnityMonoUtil.AddComponent(go,name)
	local comp = go:AddComponent(SystemType.GetType(name));
	return comp;
end

function UnityMonoUtil.GetComponent(go,name)	
	return go:GetComponent(name);
end

function UnityMonoUtil.GetComponentsInChildren(go,cp,all)
	return go:GetComponentsInChildren(SystemType.GetType(cp),all or false);
end

function UnityMonoUtil.AddTriggerEvent(go,enter,exit,stay)
	local com = UnityMonoUtil.AddComponent(go,"TriggerScript");
	com.LuaOnTriggerEnter = enter;
	com.LuaOnTriggerExit = exit;
	com.LuaOnTriggerStay = stay;
end

function UnityMonoUtil.Destroy(go,second)
	if  go==nil then return end 
	if second then
		GameObject.Destroy(go,second);
	else
		GameObject.Destroy(go);
	end
end



