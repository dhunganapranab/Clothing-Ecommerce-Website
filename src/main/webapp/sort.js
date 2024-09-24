


let field= document.querySelector('product-price');
let li = Array.from(field.children);
let select = document.getElementById('select');
let ar= [];


for(let i of li)
{
	const last = i.lastElementChild;
	const x = last.textContent.trim();
	const y = Number(x.substring(1));
	
}
