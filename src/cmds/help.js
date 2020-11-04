const Discord = require('discord.js')
const fs = require('fs')

function randomItem(array) {
    return array[Math.floor(Math.random() * array.length)];
}

module.exports = function(client, message, prefix, config){
    if (message.content.toLowerCase().startsWith(prefix + 'help')){
        const randommsgs = JSON.parse(fs.readFileSync('./data/help_greet_user.json'))
        let randommsg = randomItem(randommsgs)
    
        let embed = new Discord.RichEmbed()
    
        embed.setAuthor(client.user.username, client.user.displayAvatarURL)
        .setColor('#000F42')
        .setDescription(`Hey ${message.author.username}! ` + randommsg + '\nAnyway, here\'s some commands!')
    
        if (config.twitter.posters.includes(message.author.id)) embed.addField(prefix + 'tweet', 'Post a tweet to Arendelle Odyssey Twitter', true)

        message.channel.send(embed)
    }
}