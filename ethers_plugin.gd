@tool
extends EditorPlugin

func _enter_tree():
	add_autoload_singleton("Ethers", "ethers.gd")
	add_custom_type("ConnectWalletButton", "Button", preload("connect_wallet.gd"), Texture2D.new())


func _exit_tree():
	remove_autoload_singleton("Ethers")
