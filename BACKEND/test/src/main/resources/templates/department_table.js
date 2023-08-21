
       
    function addStudent()
    { 
        var department=document.sample.department.value; 
       // var name=document.sample.name.value; 
        
        var tr = document.createElement('tr');
        
        var td1 = tr.appendChild(document.createElement('td'));
        //var td2 = tr.appendChild(document.createElement('td'));
        var td3 = tr.appendChild(document.createElement('td'));
        var td4 = tr.appendChild(document.createElement('td'));
        
        
        td1.innerHTML=department;
       // td2.innerHTML=name;
        td3.innerHTML='<input type="button" name="del" value="Delete" onclick="delStudent(this);" class="btn btn-danger">'
        td4.innerHTML='<input type="button" name="up" value="Update" onclick="UpStud(this);" class="btn btn-primary">'

        document.getElementById("tbl").appendChild(tr);
    }

    function UpStud(stud){
         var department=document.sample.department.value; 
       // var name=document.sample.name.value; 
        var s = stud.parentNode.parentNode;
        var tr = document.createElement('tr');
        
        var td1 = tr.appendChild(document.createElement('td'));
        //var td2 = tr.appendChild(document.createElement('td'));
        var td3 = tr.appendChild(document.createElement('td'));
        var td4 = tr.appendChild(document.createElement('td'));
        
        
        td1.innerHTML='<input type="text" name="department">';
       // td2.innerHTML='<input type="text" name="name1">';
        td3.innerHTML='<input type="button" name="del" value="Delete" onclick="delStudent(this);" class="btn btn-danger">'
        td4.innerHTML='<input type="button" name="up" value="Update" onclick="addUpStud(this);" class="btn btn-primary">'

        document.getElementById("tbl").replaceChild(tr, s);
    }

    function addUpStud(stud){
        var department=document.sample.department.value; 
        //var name=document.sample.name1.value; 
        var s = stud.parentNode.parentNode;
        var tr = document.createElement('tr');
        
        var td1 = tr.appendChild(document.createElement('td'));
        //var td2 = tr.appendChild(document.createElement('td'));
        var td3 = tr.appendChild(document.createElement('td'));
        var td4 = tr.appendChild(document.createElement('td'));
        
        
        td1.innerHTML=department;
        //td2.innerHTML=name;
        td3.innerHTML='<input type="button" name="del" value="Delete" onclick="delStudent(this);" class="btn btn-danger">'
        td4.innerHTML='<input type="button" name="up" value="Update" onclick="UpStud(this);" class="btn btn-primary">'

        document.getElementById("tbl").replaceChild(tr, s);
    }

    function delStudent(Stud){
        var s=Stud.parentNode.parentNode;
        s.parentNode.removeChild(s);
    }
    
    
    