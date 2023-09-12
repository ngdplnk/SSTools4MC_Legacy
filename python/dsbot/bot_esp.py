#MÓDULOS
import discord
from discord.ext import commands

#DEF INTENCIONES
intents = discord.Intents.default()
intents.typing = True
intents.presences = False

#PREFIJO
bot = commands.Bot(command_prefix='!', intents=intents)

#EVENTO INICIO
@bot.event
async def on_ready():
    print(f'Bot conectado como {bot.user.name}')

#COM SERVIDOR ABIERTO
@bot.command()
async def servidor_abierto(ctx):
    try:
        await ctx.send('El SMP está abierto! Únete')
    except Exception as e:
        print(f"Error al ejecutar el comando !servidor_abierto: {e}")

#TOKEN
TOKEN = ''

#INICIO
bot.run(TOKEN)
