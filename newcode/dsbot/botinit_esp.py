import discord
from discord.ext import commands
import asyncio
import requests

intents = discord.Intents.default()
intents.typing = False
intents.presences = False

bot = commands.Bot(command_prefix='!', intents=intents)

TOKEN = ''

canal_anuncios_id = 1234

def obtener_ip_publica():
    try:
        response = requests.get('https://api64.ipify.org?format=json')
        data = response.json()
        return data['ip']
    except Exception as e:
        print(f"Error al obtener la IP: {e}")
        return None

@bot.event
async def on_ready():
    print(f'{bot.user.name} conectado correctamente')
    canal_anuncios = bot.get_channel(canal_anuncios_id)
    if canal_anuncios:
        await canal_anuncios.purge() # type: ignore
        ip_publica = obtener_ip_publica()
        if ip_publica:
            mensaje = f'@everyone\nSERVER ABIERTO\n\nIP\n||{ip_publica}:42069||\n\n1.20.1'
            await canal_anuncios.send(mensaje) # type: ignore

@bot.event
async def on_error(event, *args, **kwargs):
    print(f"Error en evento {event}: {args} {kwargs}")

async def main():
    try:
        await bot.start(TOKEN)
    except KeyboardInterrupt:
        await bot.close()

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
