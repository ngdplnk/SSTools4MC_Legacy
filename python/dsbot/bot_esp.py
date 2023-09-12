#MÓDULOS
import discord
from discord.ext import commands
import asyncio

#INTENTS
intents = discord.Intents.default()
intents.typing = False
intents.presences = False

#PREFIX
bot = commands.Bot(command_prefix='!', intents=intents)

#TOKEN
TOKEN = ''

#ID ESTADO
canal_id = 

@bot.event
async def on_ready():
    print(f'{bot.user.name} iniciado correctamente.')
    canal = bot.get_channel(canal_id)
    if canal:
        await canal.purge()
        await canal.send(f'El SMP está abierto!\n\nIP\n\n||aqui debería ir la ip:42069||\n\n1.20.1')

@bot.event
async def on_disconnect():
    canal = bot.get_channel(canal_id)
    if canal:
        await canal.purge()
        await canal.send('El SMP está cerrado.')

@bot.command()
async def ip(ctx):
    canal = ctx.channel
    await canal.send('La IP del server es')

#ERRORES
@bot.event
async def on_error(event, *args, **kwargs):
    print(f"Error en evento {event}: {args} {kwargs}")

async def main():
    try:
        await bot.start(TOKEN)
    except KeyboardInterrupt:
        canal = bot.get_channel(canal_id)
        if canal:
            await canal.purge()
            await canal.send('El SMP está cerrado.')
        await bot.close()

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
