function formvalidation()
{
var eid1=document.registration.empid1;
var eid2=document.registration.empid2;
var add1=document.registration.empadd1;
var add2=document.registration.empadd2;
var ecity=document.registration.city;
var estate=document.registration.state;
var ezip=document.registration.Zip;
var eemail=document.registration.email;
var econtact=document.registration.contact;
var essn=document.registration.ssn;
var em=document.registration.manager;
var ef=document.registration.full;
var ep=document.registration.part;
var ta=document.registration.desc;

if(empid_validation(eid1,5,12))
{
if(empid_validation(eid2,5,12))
{
if(allletter(add1))
{
if(allletter(add2))
{
if(allletter(ecity))
{
if(allletter(estate))
{
if(allnumeric(ezip,5))
{
if(validateEmail(eemail))
{
if(allnumeric(econtact,10))
{
if(allnumeric(essn,9))
{
if(validateType(etype))
{
if(allletter(ta,100))
{
}
}
}
}
}
}
}
}
}
}
}
}
return false;
}

function empid_validation(eid,mx,my)
{
var eid_len=eid.value.length;
if(eid_len==0||eid_len>=my||eid_len<mx)
{
alert("Enter a valid First-name/last-name with length between "+mx+"to"+my);
eid.focus();
return false;
}
return true;
}

function allletter(add)
{
var letters=/^[0-9a-zA-zs]+$/;
if(add.value.match(letters))
{
return true;
}
else
{
alert("Enter the Complete Address");
add.focus();
return false;
}
}

function allnumeric(ezip,mx)
{
var numbers=/^[0-9]+$/;
if(ezip.value.match(numbers)&&ezip.value.length==mx)
{
return true;
}
else
{
prompt(getElementById(ezip)+"Zip code must have "+mx+" numeric characters only");
ezip.focus();
return false;
}
}

function validateEmail(eemail)
{
var mailformat=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(eemail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!!");
eemail.focus();
return false;
}
}

function validateType(em,ef,ep)
{
var x=0;
if(em.checked)
{
x++;
}
if(ef.checked)
{
x++;
}
if(ep.checked)
{
x++;
}
if(x==0)
{
alert("Type");
Type.focus();
return false;
}
else
{
if(new Date().getHours()<12)
{
confirm("Form successfuly submitted:-GOOD MORNING");
window.location.reload();
return true;
}
else if(new Date().getHours()>12&&new Date().getHours()<16)
{
confirm("Form successfuly submitted:-GOOD AFTERNOON");
window.location.reload();
return true;
}
else 
{
confirm("Form successfuly submitted:-GOOD EVENING");
window.location.reload();
return true;
}
}
}
