// SPDX-License-Identifier: MIT
/*
 *
 *    BBBBBBBBBBBBBBBBB    EEEEEEEEEEEEEEEEEEEEEE RRRRRRRRRRRRRRRRR    MMMMMMMM               MMMMMMMM
 *    B::::::::::::::::B   E::::::::::::::::::::E R::::::::::::::::R   M:::::::M             M:::::::M
 *    B::::::BBBBBB:::::B  E::::::::::::::::::::E R::::::RRRRRR:::::R  M::::::::M           M::::::::M
 *    BB:::::B     B:::::B EE::::::EEEEEEEEE::::E RR:::::R     R:::::R M:::::::::M         M:::::::::M
 *      B::::B     B:::::B   E:::::E       EEEEEE   R::::R     R:::::R M::::::::::M       M::::::::::M
 *      B::::B     B:::::B   E:::::E                R::::R     R:::::R M:::::::::::M     M:::::::::::M
 *      B::::BBBBBB:::::B    E::::::EEEEEEEEEE      R::::RRRRRR:::::R  M:::::::M::::M   M::::M:::::::M
 *      B:::::::::::::BB     E:::::::::::::::E      R:::::::::::::RR   M::::::M M::::M M::::M M::::::M
 *      B::::BBBBBB:::::B    E:::::::::::::::E      R::::RRRRRR:::::R  M::::::M  M::::M::::M  M::::::M
 *      B::::B     B:::::B   E::::::EEEEEEEEEE      R::::R     R:::::R M::::::M   M:::::::M   M::::::M
 *      B::::B     B:::::B   E:::::E                R::::R     R:::::R M::::::M    M:::::M    M::::::M
 *      B::::B     B:::::B   E:::::E       EEEEEE   R::::R     R:::::R M::::::M     MMMMM     M::::::M
 *    BB:::::BBBBBB::::::B EE::::::EEEEEEEE:::::E RR:::::R     R:::::R M::::::M               M::::::M
 *    B:::::::::::::::::B  E::::::::::::::::::::E R::::::R     R:::::R M::::::M               M::::::M
 *    B::::::::::::::::B   E::::::::::::::::::::E R::::::R     R:::::R M::::::M               M::::::M
 *    BBBBBBBBBBBBBBBBB    EEEEEEEEEEEEEEEEEEEEEE RRRRRRRR     RRRRRRR MMMMMMMM               MMMMMMMM
 *
 */

/*
 * Contract Foreword: 
 *
 * On October 4, 2023, (the BERM token contract launch date) the US National debt has surpassed 33 1/3 Trillion US Dollars as reported on https://www.usdebtclock.org/. 
 * 
 * The host nation of the world's FIAT reserve currency reaching 1/3 of 100 Trillion dollars of sovereign debt load is an unfathomable and dubious global economic milestone. 
 * 
 * In 2008, the Great Financial Crisis (GFC) inspired new alternate monetary instruments such as Bitcoin, Ethereum, and other cryptocurrencies. At that time of
 * that crisis, the US soveriegn debt stood at approximately $11 Trillion US Dollars. The US sovereign FIAT debt load has trippled in just 15 years. 
 *
 * At the time of the BERM contract publishing, the US National Debt is still growing at approximately 8% annually. When compounded forward, this forecasts another 
 * trippling over the next 15 years (by approximately 2038) to 100 Trillion US Dollars.
 *
 * Many believe a continuation of this unchecked federal spending can only result in the devaluation of FIAT currency and hyperinflation caused by accelerated expansion 
 * of the government issued FIAT money supply to service an ever expanding debt burdon. This is the so-called Debt Spiral. 
 *
 * Many in the cryptocurrency community believe alternate value stores such as Bitcoin and Ethereum with known supply issuance may offer a better store of value 
 * especially when baselined against an ever expanding FIAT money supply.   
 * 
 * The BERM token is being launched in commemoration of this ominous milestone at a time when rising interest rates, inverted yield curves, bank failures, and expanding
 * sovereign debt loads are potentially signaling the next global FIAT financial crisis. 
 *
 * BERM
 *  (noun)
 *  - a natural or man made raised bank bordering a body water meant to hold back the flow of water
 *  - an articial ridge or embankment used as a defense 
 *   
 *******************************************************************************************************************************************************************************
 * BERM Token Description:
 *
 * The BERM Token is an ERC20 Token deployed on the Polygon (MATIC) network. This smart contract is based on the OpenZeppelin contract standard for ERC20 tokens.
 *
 * The BERM Token has two companion ERC721 NFT contracts, BERMEarlyAccess NFT (BERMEA) and the BERMOwnership NFT (BERMOWN). 
 *
 * Berm Token was created to explore some potentialy novel uses of NFTs, and DeFi token AMM (Automatics Market Maker) dynamics.
 *
 * BERM Token Features:
 *
 * Deflationary Token Supply :
 * 
 *  Berm Token has an initial mintage and maximum total supply of 33 and 1/3 Trillion tokens (one token for each dollar of US National Debt at the time of contract launch).
 * 
 *  The token contract has two design elements that are intended to reduce the total token supply over time:
 *
 *      Burn on Transfer: 
 *           All transfers of tokens (including DeFi Swaps and wallet to wallet transfers) incur a 0.3% burn fee on transfer
 *
 *      Burn on Ownership NFT Mintage: 
 *           A wallet with a balance of at least 327 Billion tokens can initaite a transaction to mint an Ownership NFT by burning 327 Billion tokens (~0.98% of total original supply)  
 *
 * Companion NFTs:
 *
 *  BERM Token is linked in this smart contract code to two companion NFTs (ERC721) contracts. Both NFT contracts are based on the OpenZeppelin contract standard for ERC721 tokens.
 *
 *  BermEarlyAccess (BERMEA) NFT:
 *
 *      BERMEA is a NFT (non-fungible token) with no mintage fee (except nextwork transaction gas fees). It is limited to a maximum mintage of 50 NFTs. Holders of a BERMEA NFT have 
 *      access to BERM token transfers (for example can execute a DeFi swap) before transfers are opened to all public wallet addresses. During the ealry access period, a BERMEA NFT 
 *      holder is limited to accumulating a maximum wallet balance of ~2% of the total BERM token supply.  
 *      
 *      If a BERMEA NFT holder elects to initiate a BERM ERC20 Token transfer during the early access period, a hold down block is enforced for the wallet address. The hold down 
 *      block prevents BERM token transfers from the wallet address until the Polygon network block number reaches the hold down block number. 
 *
 *      This hold down block serves as a contract enforced token lockup period for any wallet address holding a BERMEA NFT *AND* participating in the early access period. At the time of 
 *      the initial BERM EC20 contract publishing, the hold down block value is set to the current block number + 77.5 million polygon blocks. This corresponds to approximately 5 years 
 *      of calendar time from the initial contract issuance given the current average Polygon network block time (approximately 2.03 seconds per block).
 *
 *      This 5 year period spans two Bitcoin halving events (the 2024 and 2028 halvings). These halving events have historically correlated tightly with overall cryptocurrency 
 *      market cycles. This period also represents 1/3 of the aforementioned ~15 year trajectory for the next trippling of the US national debt. 
 * 
 *      There is one contractually allowed exception to the hold down block period for BERMEA wallets. Transfers to address(0) (the token burn address) are allowed from early access 
 *      wallet addresses. This is required to enable minting of the second companion NFT, the BERMOwnersip (BERMOWN) NFT.
 *
 *  BermOwnership (BERMOWN) NFT:
 * 
 *      The BERMOwnership (BERMOWN) NFT smart contract is the recipient of all transfer fees collected through the primary BERM ERC20 Token contract. Holders of a BERMOWN NFT can elect 
 *      to claim (transfer) a percentage of the collected transfer fees based upon their relative percentage of the total current supply of BERMOWN NFT tokens. 
 * 
 *      BERMOWN NFTs are minted through the BERM Token contract by transacting with the mintOwnershipNFT() function. Calling this function requires the caller wallet address have a current
 *      balance of at least 327 billion tokens (approximately 0.98% of the original maximum supply). The minting of a BERMOWN NFT permanently and irrevocably burns 327 billion BERM Tokens from 
 *      the calling wallet address token holdings during the minting transaction. 
 *      
 *      BERMOWN NFTs are limited to a total maximum mintage of 100 NFTs. A full minting of the maximum supply of 100 BERMOWN NFTs would correspond to a cumulative burn of
 *      32.7 Trillion BERM Tokens (100 NFTs x 327 Billion burn per mint), or approximately 98% of the original 33 1/3 Trillion maximum supply of Berm tokens.  
 *
 *  The relationship between these NFT Contracts and the BERM Token is intended to explore the following ERC20 token and De-Fi effects:
 *  
 *      DeFi AMM (Automatic Market Maker) Placement and Dynamics:
 *
 *          The BERMEA NFT in combination with the early access balance limits (2%) and hold down/lock-up period (5 years) is intended to: 
 *              - place and lock-up a large percentage of the total supply while limiting early concentration (<= 2% of maximum supply allowed per wallet address) 
 *              - limit the ability for automated trading bots to "front run" the AMM pair at the the initial DeFi pair launch and at the lowest end of the AMM swap pricing curve
 * 
 *      BERMOWN and BERMEA NFT Incentives:
 *
 *          BERMEA token holders are incentivized to particpate in the early access period and token lock due to:
 *              - potentially more stable pricing and protection from front-running and sandwich attacks
 *              - ability to partipate in lower entry price swaps during the early access period in exchange for am extended 5 year lock-up period enforced by the contract 
 *              - improved ability to aquire tokens in sufficent quantities to support future minting of a BERMOWN NFT (minimum 327 billion BERM ERC20 tokens) 
 *              - accumulation of BERM Token transfer fees to the BERMOWN NFT contract offers an alternate exit stratgy (burn to mint and claim fee share) during the early access lock-up period.
 *              - BERMOWN NFT mints reduce the overall total token supply, reducing the total number of tokens that can be swapped back through the AMM pair 
 * 
 ******************************************************************************************************************************************************************************************************
 *         
 *  Basic Tokenomics:
 *
 *      - Initial Mintage/Total Supply: 33.333 Trillion tokens (33 1/3 Trillion)
 *      - Decimals Supported: 18
 *
 *      - Token Burn on Token Transfer: 0.3% (0.003 * transfer amount)
 *      - Transfer Fee on Token Transfer: 0.3% (0.003 * transfer amount)
 *      - Transfer Fee Recipient: BermOwnership (BERMOWN) NFT Contract
 *      - Total of Transfer and Burn Fees: 0.6% (0.006 * transfer amount)
 *
 *      - BERM Token is created on the Polygon network due to more favorable transactional gas fees as compared to the Ethereum network  
 *      - The initial AMM (Automatics Market Maker) Liquidity Pair is created in QuickSwap on the Polygon network    
 *      - The initial BERM AMM Liquidity Pool Pair is denomiated with WETH (Wrapped Ethereum) on the Polygon network
 *      - The initial Liquidity Tokens have been transfered to the BERMOWN NFT contract
 *      - The Liquidity Tokens are locked in the BERMOWN contract for 5 years, after which they become distributable to BERMOWN NFT Holders 
 *      - The openTransfers() function opens up token transfers to any wallet address and renounces the smart contract admin (DEFAULT_ADMIN) role.
 * 
 ********************************************************************************************************************************************************************************************************
 *
 *  Disclaimers and Warnings
 *
 *  The author(s) of this contract do not provide legal, tax, financial, or other investment advice. The views expressed in the comments and the contract unique software code of this smart 
 *  contract represent our own personal opinions and do not constitute personalized legal, financial, tax, or other investment advice. In order to make the best decisions that suit your own needs, 
 *  you must conduct your own due diligence and seek the advice of licensed advisors if necessary. 
 *  
 *  There are risks associated with cryptocurrency and interacting with smart contracts. The authors of this contract offer no assurance, guarantee or warranty that you will be successful in achieving 
 *  your desired outcomes through any interaction with this smart contract. 
 *  
 *  The BERM smart contract and its related NFT contracts are software in the form of smart contracts released on a publicly accessible blockchain. Once published, the author(s) have no direct control 
 *  or influence over how individuals will interact with these contracts on a public blockchain. The author(s) can not modify the published contract code or revert any contract interactions. You are 
 *  responsible for reviewing and understanding the features and functions contained within this smart contract before interacting with it. For example, please note that successfully invoking the 
 *  mintOwnershipNFT() contract function will permanently and irrevocably burn (destroy) BERM ERC20 tokens.   
 *  
 *  The author(s) have made a reasonable effort to test this contract code and utilize industry contract standards (such as the OpenZeppelin contract standard). The author(s) do not however imply or 
 *  provide any guarantee or warranty against contract errors, omissions, or security vulnerabilities (current or future) within the smart contract code logic. By signing a transaction that interacts 
 *  with this contract, you acknowledge that you have reviewed and understand the contract code and you agree not to hold the contract author(s) liable for any possible claim of damages arising from 
 *  any decision made by you or on your behalf to interact with this smart contract.    
 *
 ***********************************************************************************************************************************************************************************************************
 *
 * Begins Openzeppelin ERC20 contracte standards
 */
  
// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// File: @openzeppelin/contracts/utils/introspection/IERC165.sol


// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// File: @openzeppelin/contracts/utils/introspection/ERC165.sol


// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;


/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// File: @openzeppelin/contracts/utils/math/SignedMath.sol


// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// File: @openzeppelin/contracts/utils/math/Math.sol


// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// File: @openzeppelin/contracts/utils/Strings.sol


// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;



/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toString(int256 value) internal pure returns (string memory) {
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMath.abs(value))));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// File: @openzeppelin/contracts/access/IAccessControl.sol


// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// File: @openzeppelin/contracts/access/AccessControl.sol


// OpenZeppelin Contracts (last updated v4.9.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;





/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControl is Context, IAccessControl, ERC165 {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        Strings.toHexString(account),
                        " is missing role ",
                        Strings.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol


// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;


/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// File: @openzeppelin/contracts/token/ERC20/ERC20.sol


// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;




/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}
}

// File: @openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol


// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/extensions/ERC20Burnable.sol)

pragma solidity ^0.8.0;



/**
 * @dev Extension of {ERC20} that allows token holders to destroy both their own
 * tokens and those that they have an allowance for, in a way that can be
 * recognized off-chain (via event analysis).
 */
abstract contract ERC20Burnable is Context, ERC20 {
    /**
     * @dev Destroys `amount` tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, deducting from the caller's
     * allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least
     * `amount`.
     */
    function burnFrom(address account, uint256 amount) public virtual {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
    }
}

// File: contracts/BermToken.sol


pragma solidity ^0.8.4.0;

/*
 *  All contract code above these comments is from the OpenZeppelin contracts standards
 *
 *
 *    BBBBBBBBBBBBBBBBB    EEEEEEEEEEEEEEEEEEEEEE RRRRRRRRRRRRRRRRR    MMMMMMMM               MMMMMMMM
 *    B::::::::::::::::B   E::::::::::::::::::::E R::::::::::::::::R   M:::::::M             M:::::::M
 *    B::::::BBBBBB:::::B  E::::::::::::::::::::E R::::::RRRRRR:::::R  M::::::::M           M::::::::M
 *    BB:::::B     B:::::B EE::::::EEEEEEEEE::::E RR:::::R     R:::::R M:::::::::M         M:::::::::M
 *      B::::B     B:::::B   E:::::E       EEEEEE   R::::R     R:::::R M::::::::::M       M::::::::::M
 *      B::::B     B:::::B   E:::::E                R::::R     R:::::R M:::::::::::M     M:::::::::::M
 *      B::::BBBBBB:::::B    E::::::EEEEEEEEEE      R::::RRRRRR:::::R  M:::::::M::::M   M::::M:::::::M
 *      B:::::::::::::BB     E:::::::::::::::E      R:::::::::::::RR   M::::::M M::::M M::::M M::::::M
 *      B::::BBBBBB:::::B    E:::::::::::::::E      R::::RRRRRR:::::R  M::::::M  M::::M::::M  M::::::M
 *      B::::B     B:::::B   E::::::EEEEEEEEEE      R::::R     R:::::R M::::::M   M:::::::M   M::::::M
 *      B::::B     B:::::B   E:::::E                R::::R     R:::::R M::::::M    M:::::M    M::::::M
 *      B::::B     B:::::B   E:::::E       EEEEEE   R::::R     R:::::R M::::::M     MMMMM     M::::::M
 *    BB:::::BBBBBB::::::B EE::::::EEEEEEEE:::::E RR:::::R     R:::::R M::::::M               M::::::M
 *    B:::::::::::::::::B  E::::::::::::::::::::E R::::::R     R:::::R M::::::M               M::::::M
 *    B::::::::::::::::B   E::::::::::::::::::::E R::::::R     R:::::R M::::::M               M::::::M
 *    BBBBBBBBBBBBBBBBB    EEEEEEEEEEEEEEEEEEEEEE RRRRRRRR     RRRRRRR MMMMMMMM               MMMMMMMM
 *
 *  The contract code base below these comments represents the BERM Token unique code base and functions
 *          
 */

interface BermEANFTInterface {
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
    function nftPosition(address owner) external view returns (uint256 position);
    function setRedemptionStatus(uint256 tokenIdentifer) external;
}

interface BermOwnNFTInterface {
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
    function safeMint(address to) external;
    function convertToWETHToken(uint256 amount) external;
}

contract BERMToken is ERC20, ERC20Burnable, AccessControl {

    using SafeMath for uint256;
    bool public transfersOpen;
    address public earlyAccessNFTContract;
    address public ownershipNFTContract;
    uint256 public constant BURN_RATE = 3; //0.3% Burn Rate on Transfers
    uint256 public constant FEE_RATE = 3; //0.3% Burn Rate on Transfers
    mapping(address => bool) public earlyAdopter;
    uint256 public earlyAdopterLockupBlock;
    uint256 public earlyAccessPosition; 
    
    constructor() ERC20("BERMToken", "BERM") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _mint(msg.sender, 33333333333333 * 10 ** decimals()); //mints initial supply of 1 billion tokens
        earlyAdopterLockupBlock = (block.number.add(77500000)); //set lockup period for early adopters to ~5 years, (77.5 M Polygon blocks after minting block)
        earlyAccessPosition = 1;
    }


    function _transfer(address sender, address recipient, uint256 amount) internal virtual override {
        require(sender != address(0),"BERM: No transfer from address 0");
        uint256 fromBalance = balanceOf(sender);
        require(fromBalance >= amount, "BERM: transfer exceeds balance");
        
        if ( hasRole(DEFAULT_ADMIN_ROLE, msg.sender) || hasRole(DEFAULT_ADMIN_ROLE, sender) || recipient == address(0) ) {
            super._transfer(sender, recipient, amount);
        } else {
            uint256 burnAmount = amount.mul(BURN_RATE).div(1000);
            uint256 feeAmount = amount.mul(FEE_RATE).div(1000);
            uint256 newAmount = amount.sub(burnAmount).sub(feeAmount);
        
            if ( burnAmount < 1 ) {
                super._transfer(sender, recipient, amount);
            } else {
                _burn(sender, burnAmount);
                super._transfer(sender, ownershipNFTContract, feeAmount);
                super._transfer(sender, recipient, newAmount);   
            }
        } 
    }

    /** @dev Sets the contract address for the companion BERMEA NFT Contract.
    */
    function setEarlyAccessNFTContract(address earlyAccessNFTContractAddess) public onlyRole(DEFAULT_ADMIN_ROLE) {
        earlyAccessNFTContract = earlyAccessNFTContractAddess;
    }

    /** @dev Sets the contract address for the companion BERMOWN NFT Contract.
    */
    function setOwnershipNFTContract(address ownershipNFTContractAddess) public onlyRole(DEFAULT_ADMIN_ROLE) {
        ownershipNFTContract = ownershipNFTContractAddess;
        //bermOwnNFTContract = BermOwnNFTInterface(ownershipNFTContractAddess);
    }
    
    /** @dev Opens trading to all public wallet addresses and revoke the Default Admin Role.
    */
    function openTransfers() public onlyRole(DEFAULT_ADMIN_ROLE) {
        require (transfersOpen == false,"BERM: Transfers already open");
        transfersOpen = true;
        //revoke the admin role
        renounceRole(DEFAULT_ADMIN_ROLE, msg.sender);
        //_grantRole(DEFAULT_ADMIN_ROLE, address(0));
    }

    /**
     * @dev
     *
     * Public Function that allows a walet address holding 327 Billion BERM tokens to burn them in order to mint an Ownership NFT
     * Holders of the Ownerhip NFT can collect transfer fees equivalent to percentage of Ownership NFTs owned versus total supply. 
     * This is intended to incentivize Early Access token holders to burn tokens to access collected transfer fees during the initial 
     * ~5 year lock up period for Early Access wallets. 
     *
     **/

    function mintOwnershipNFT() public {
        uint256 tokenRequirement = 327000000000 * 10 ** decimals();
        require(balanceOf(msg.sender) > tokenRequirement,"BERM: insufficient Balance");
        _burn(msg.sender, tokenRequirement);
        BermOwnNFTInterface(ownershipNFTContract).safeMint(msg.sender);
    }

    /**
     * @dev
     *
     * Private Function that that handles early adopter wallets prior to the opening of transfers
     * This functions limit wallet balance to 2% of total token supply during the early access period
     * advances the earlyAccess position counter to the next early access NFT holder
     *
     **/

    function handleEarlyAdopter(address to, uint256 amount, uint256 position) private {
        //handle early adopter logic in here
        // NFT Ordering
        earlyAdopter[to] = true;
        // balanceOf() limits early adopters are restricted from accumulating more that 2% of total float during the early access period
        uint256 divisor2 = 50;
        uint256 burnAmount = amount.mul(BURN_RATE).div(1000);
        uint256 feeAmount = amount.mul(FEE_RATE).div(1000);
        require(balanceOf(to).add(amount).sub(burnAmount).sub(feeAmount) <= totalSupply().div(divisor2),"BERM: Exceeds ownership limit");
        require (position <= earlyAccessPosition,"BERM: NFT position not reached");
        if (position == earlyAccessPosition) {
            earlyAccessPosition++;
        }
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override {  
        /**
        * @dev
        *
        * Before transferring tokens, ensure that transfers have been opened.
        * Logic allows for DEFAULT_ADMIN_ROLE (token minter) to create liquidity pools and allows early access to
        * early access NFT holders. If early access is used by a NFT holder, wallet address mapping for earlyAdopter 
        * is set to true. This mapping limits transfers from an earlyAccess wallet address until the target Lockup block 
        * is reached.  
        *
        **/ 
        // This logic to prevent bots before transfers open and EA Contract Set
        if (! transfersOpen) {
            if (earlyAccessNFTContract != address(0)) {
                bool isEarlyAdopter = false;
                uint256 position =  BermEANFTInterface(earlyAccessNFTContract).nftPosition(to);
                isEarlyAdopter = position > uint256(0);
                require( isEarlyAdopter || hasRole(DEFAULT_ADMIN_ROLE, to) || hasRole(DEFAULT_ADMIN_ROLE, from) || to == ownershipNFTContract || to == address(0), "BERM: Transfer Not Yet Allowed" );
                if (isEarlyAdopter) {
                    handleEarlyAdopter(to, amount, position);
                } 
            }  else {
                require( hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "BERM: Transfer Not Yet Allowed" );
            }
        }
        
        /**
        * @dev
        *
        * Accounts that acquired tokens before transfersOpen period (only available to early access NFT holders)
        * can not transfer tokens during the initial 5 year lock up period for Early Access addresses. 
        * The exception in transfers to address(0) (token burns) which are permitted during this period.
        *
        **/

        if (earlyAdopter[from]) {    
           require( ( block.number > earlyAdopterLockupBlock ) || (to == address(0)), "BERM: EA Lock-Up Period" );
        }
        
        super._beforeTokenTransfer(from, to, amount);
    }

}

