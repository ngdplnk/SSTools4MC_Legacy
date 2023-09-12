const { Client, Intents } = require('discord.js');
const axios = require('axios');

const client = new Client({ 
    intents: [
        Intents.FLAGS.GUILDS,
        Intents.FLAGS.GUILD_MESSAGES,
        Intents.FLAGS.GUILD_MESSAGE_REACTIONS,
        Intents.FLAGS.GUILD_PRESENCES,
        Intents.FLAGS.GUILD_MEMBERS,
    ],
});
const TOKEN = '';

const canalAnunciosId = '';

const obtenerIpPublica = async () => {
    try {
        const response = await axios.get('https://api64.ipify.org?format=json');
        const data = response.data;
        return data.ip;
    } catch (e) {
        console.error(`Error al obtener la IP: ${e}`);
        return null;
    }
};

client.once('ready', async () => {
    console.log(`${client.user.username} conectado correctamente`);
    const canalAnuncios = client.channels.cache.get(canalAnunciosId);
    if (canalAnuncios) {
        await canalAnuncios.messages.fetch().then(messages => {
            canalAnuncios.bulkDelete(messages);
        });
        const ipPublica = await obtenerIpPublica();
        if (ipPublica) {
            const mensaje = `@everyone\nSERVER ABIERTO\n\nIP\n||${ipPublica}:42069||\n\n1.20.1`;
            await canalAnuncios.send(mensaje);
        }
    }
});

client.on('error', (error) => {
    console.error(`Error en evento: ${error.message}`);
});

client.login(TOKEN);
