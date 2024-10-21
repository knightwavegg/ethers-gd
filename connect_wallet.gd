extends Button
class_name ConnectWalletButton

func _ready():
	if Ethers.is_wallet_available():
		Ethers.wallet_connected.connect(_on_wallet_connected)
		text = "Connect Wallet"
		pressed.connect(_on_pressed)
	else:
		print_debug("No wallet available, please install metamask")
		text = "No wallet extension found, please install Metamask or Rabby wallet."


func _on_pressed():
	Ethers.connect_wallet()


func _on_wallet_connected(address:String):
	text = address
