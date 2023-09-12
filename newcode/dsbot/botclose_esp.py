import discord
from discord.ext import commands
import asyncio

intents = discord.Intents.default()
intents.typing = False
intents.presences = False

bot = commands.Bot(command_prefix='!', intents=intents)

TOKEN = ''

canal_anuncios_id = 1234

@bot.event
async def on_ready():
    print(f'Desconectando {bot.user.name}')
    canal_anuncios = bot.get_channel(canal_anuncios_id)
    if canal_anuncios:
        await canal_anuncios.purge() # type: ignore # type: ignore
        mensaje = f'@everyone\nSERVER CERRADO'
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
