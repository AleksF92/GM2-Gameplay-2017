///@description chance
///@param percent
var percent = argument[0];
var roll = random(100);
var result = (roll <= percent - 1);
return result;