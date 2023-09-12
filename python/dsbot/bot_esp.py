#MÓDULOS
import discord
from discord.ext import commands

# Definir las intenciones que necesita tu bot
intents = discord.Intents.default()
intents.typing = True
intents.presences = False

# Configura el prefijo que el bot usará para los comandos y las intenciones.
bot = commands.Bot(command_prefix='!', intents=intents)

# Evento que se ejecuta cuando el bot se inicia.
@bot.event
async def on_ready():
    print(f'Bot conectado como {bot.user.name}')

# Comando para anunciar que el servidor de Minecraft está abierto.
@bot.command()
async def servidor_abierto(ctx):
    try:
        await ctx.send('El servidor de Minecraft está abierto. ¡Uníos!')
    except Exception as e:
        print(f"Error al ejecutar el comando !servidor_abierto: {e}")

# Token del bot
TOKEN = ''

# Inicia el bot.
bot.run(TOKEN)
