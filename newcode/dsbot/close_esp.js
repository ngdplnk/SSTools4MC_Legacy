const { Client, Intents } = require('discord.js');

const intents = new Intents();
intents.default();
intents.remove('typing');
intents.remove('presence');

const bot = new Client({ intents: intents });
const TOKEN = '';
const canalAnunciosId = '';

bot.once('ready', () => {
    console.log(`Desconectando ${bot.user.tag}`);
    const canalAnuncios = bot.channels.cache.get(canalAnunciosId);
    if (canalAnuncios) {
        canalAnuncios.messages.fetch({ limit: 100 }).then(messages => {
            canalAnuncios.bulkDelete(messages);
        }).catch(console.error);
        const mensaje = `@everyone\nSERVER CERRADO`;
        canalAnuncios.send(mensaje).catch(console.error);
    }
});

bot.on('error', (error) => {
    console.error(`Error en evento: ${error}`);
});

bot.login(TOKEN).catch(console.error);
