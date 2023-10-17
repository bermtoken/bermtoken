About

BERM (noun)

    a natural or man made raised bank bordering a body water meant to hold back the flow of water
    an artificial ridge or embankment used as a defense

On October 4, 2023, (the launch date of the BERM token contract) the US National debt surpassed 33 1/3 Trillion US Dollars as reported on https://www.usdebtclock.org/.

The host nation of the world’s FIAT reserve currency reaching 1/3 of 100 Trillion dollars of sovereign debt load is an unfathomable and dubious global economic milestone. In 2008, the Great Financial Crisis (GFC) inspired new alternate monetary instruments such as Bitcoin, Ethereum, and other cryptocurrencies. At time of that crisis, the US sovereign debt stood at approximately $11 Trillion US Dollars. The US sovereign FIAT debt load has tripled in just 15 years. At the time of the BERM contract publishing, the US National Debt is still growing at approximately 8% annually. When compounded forward, this forecasts another tripling over the next 15 years (by approximately 2038) to 100 Trillion US Dollars.

Many believe a continuation of this unchecked federal spending can only result in the devaluation of FIAT currency and hyperinflation caused by accelerated expansion of the government issued FIAT money supply to service an ever expanding debt burdon. This is the so-called Debt Spiral.

Many in the cryptocurrency community believe alternate value stores such as Bitcoin and Ethereum with known supply issuance may offer a better store of value especially when baselined against an ever expanding FIAT money supply.

The BERM token is being launched in commemoration of this ominous milestone at a time when rising interest rates, inverted yield curves, bank failures, and expanding sovereign debt loads are potentially signaling the next global FIAT financial crisis.

BERM Token Description:

The BERM Token is an ERC20 Token deployed on the Polygon (MATIC) network. This smart contract is based on the OpenZeppelin contract standard for ERC20 tokens.

The BERM Token has two companion ERC721 NFT contracts, BERMEarlyAccess NFT (BERMEA) and the BERMOwnership NFT (BERMOWN).

Berm Token was created to explore some potential novel uses of NFTs, and DeFi token AMM (Automatics Market Maker) dynamics.

BERM Token Features:

  Deflationary Token Supply :
    Berm Token has an initial mintage and maximum total supply of 33 and 1/3 Trillion tokens (one token for each dollar of US National Debt at the time of contract launch).
    The token contract has two design elements that are intended to reduce the total token supply over time:

  Burn on Transfer:
    All transfers of tokens (including DeFi Swaps and wallet to wallet transfers) incur a 0.3% burn fee on transfer

  Burn on Ownership NFT Mintage:
    A wallet with a balance of at least 327 Billion tokens can initiate a transaction to mint an Ownership NFT by burning 327 Billion tokens (~0.98% of total original supply).

Companion NFT Contracts:

BERM Token is linked in this smart contract code to two companion NFTs (ERC721) contracts. Both NFT contracts are based on the OpenZeppelin contract standard for ERC721 tokens.

  BermEarlyAccess (BERMEA) NFT:

    BERMEA is a NFT (non-fungible token) with no mintage fee (except network transaction gas fees). It is limited to a maximum mintage of 50 NFTs. Holders of a BERMEA NFT have access to BERM token transfers (for example can execute a De-Fi swap) before transfers are opened to all public wallet addresses. During the ealry access period, a BERMEA NFT holder is limited to accumulating a maximum wallet balance of ~2% of the total BERM token supply.

    If a BERMEA NFT holder elects to initiate a BERM ERC20 Token transfer during the early access period, a hold down block is enforced for the wallet address. The hold down block prevents BERM token transfers from the wallet address until the Polygon network block number reaches the hold down block number.

    This hold down block serves as a contract enforced token lockup period for any wallet address holding a BERMEA NFT AND participating in the early access period. At the time of the initial BERM ERC20 contract publishing, the hold down block value is set to the current block number + 77.5 million polygon blocks. This corresponds to approximately 5 years of calendar time from the initial contract issuance given the current average Polygon network block time (approximately 2.03 seconds per block).

    This 5 year period spans two Bitcoin halving events (the 2024 and 2028 halving). These halving events have historically correlated tightly with overall cryptocurrency market cycles. This period also represents 1/3 of the aforementioned ~15 year trajectory for the next tripling of the US national debt.

    There is one contractually allowed exception to the hold down block period for BERMEA wallets. Transfers to address(0) (the token burn address) are allowed from early access wallet addresses. This is required to enable minting of the second companion NFT, the BERMOwnersip (BERMOWN) NFT.

  BermOwnership (BERMOWN) NFT:

    The BERMOwnership (BERMOWN) NFT smart contract is the recipient of all transfer fees collected through the primary BERM ERC20 Token contract. Holders of a BERMOWN NFT can elect to claim (transfer) a percentage of the collected transfer fees based upon their relative percentage of the total current supply of BERMOWN NFT tokens.

    BERMOWN NFTs are minted through the BERM Token contract by transacting with the mintOwnershipNFT() function. Calling this function requires the caller wallet address have a current balance of at least 327 billion tokens (approximately 0.98% of the original maximum supply). The minting of a BERMOWN NFT permanently and irrevocably burns 327 billion BERM Tokens from the calling wallet address token holdings during the minting transaction.

    BERMOWN NFTs are limited to a total maximum mintage of 100 NFTs. A full minting of the maximum supply of 100 BERMOWN NFTs would correspond to a cumulative burn of 32.7 Trillion BERM Tokens (100 NFTs x 327 Billion burn per mint), or approximately 98% of the original 33 1/3 Trillion maximum supply of Berm tokens.

The relationship between these NFT Contracts and the BERM Token is intended to explore the following ERC20 token and De-Fi effects:

  De-Fi AMM (Automatic Market Maker) Placement and Dynamics:

    The BERMEA NFT in combination with the early access balance limits (2%) and hold down/lock-up period (5 years) is intended to:
        place and lock-up a large percentage of the total supply while limiting early concentration (<= 2% of maximum supply allowed per wallet address)
        limit the ability for automated trading bots to “front run” the AMM pair at the the initial DeFi pair launch and at the lowest end of the AMM swap pricing curve

    BERMOWN and BERMEA NFT Incentives:
      BERMEA token holders have incentive to participate in the early access period and token lock due to:
      potentially more stable pricing and protection from front-running and sandwich attacks
      ability to participate in lower entry price swaps during the early access period in exchange for am extended 5 year lock-up period enforced by the contract
      improved ability to acquire tokens in sufficient quantities to support future minting of a BERMOWN NFT (minimum 327 billion BERM ERC20 tokens)
      accumulation of BERM Token transfer fees to the BERMOWN NFT contract offers an alternate exit strategy (burn to mint and claim fee share) during the early access lock-up period.
      BERMOWN NFT mints reduce the overall total token supply, reducing the total number of tokens that can be swapped back through the AMM pair

Basic Tokenomics:

    Initial Mintage/Total Supply: 33.333 Trillion tokens (33 1/3 Trillion)
    Decimals Supported: 18
    Token Burn on Token Transfer: 0.3% (0.003 * transfer amount)
    Transfer Fee on Token Transfer: 0.3% (0.003 * transfer amount)
    Transfer Fee Recipient: BermOwnership (BERMOWN) NFT Contract
    Total of Transfer and Burn Fees: 0.6% (0.006 * transfer amount)
    BERM Token is created on the Polygon network due to more favorable transactional gas fees as compared to the Ethereum network
    The initial AMM (Automatics Market Maker) Liquidity Pair is created in QuickSwap on the Polygon network
    The initial BERM AMM Liquidity Pool Pair is denominated with WETH (Wrapped Ethereum) on the Polygon network
    The initial Liquidity Tokens have been transferred to the BERMOWN NFT contract
    The Liquidity Tokens are locked in the BERMOWN contract for 5 years, after which time they can be distributed to BERMOWN NFT Holders
    The openTransfers() function opens up token transfers to any wallet address and renounces the smart contract admin (DEFAULT_ADMIN) role.

Disclaimers and Warnings

    The author(s) of this contract do not provide legal, tax, financial, or other investment advice. 
    The views expressed in the comments and the contract unique software code of this smart contract represent our own personal opinions and do not constitute personalized legal, financial, tax, or other investment advice. 
    In order to make the best decisions that suit your own needs, you must conduct your own due diligence and seek the advice of licensed advisors if necessary.
    There are risks associated with cryptocurrency and interacting with smart contracts. The authors of this contract offer no assurance, guarantee or warranty that you will be successful in achieving your desired outcomes through any interaction with this smart contract.
    The BERM smart contract and its related NFT contracts are software in the form of smart contracts released on a publicly accessible blockchain. 
    Once published, the author(s) have no direct control or influence over how individuals will interact with these contracts on a public blockchain. 
    The author(s) can not modify the published contract code or revert any contract interactions. 
    You are responsible for reviewing and understanding the features and functions contained within this smart contract before interacting with it. 
    For example, please note that successfully invoking the mintOwnershipNFT() contract function will permanently and irrevocably burn (destroy) BERM ERC20 tokens.
    The author(s) have made a reasonable effort to test this contract code and utilize industry contract standards (such as the OpenZeppelin contract standard). 
    The author(s) do not however imply or provide any guarantee or warranty against contract errors, omissions, or security vulnerabilities (current or future) within the smart contract code logic. 
    By signing a transaction that interacts with this contract, you acknowledge that you have reviewed and understand the contract code and you agree not to hold the contract author(s) liable for any possible claim of damages arising from any decision made by you or on your behalf to interact with this smart contract.


