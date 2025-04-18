import "./IGameObjects.sol";
pragma solidity ^0.8.0;

library GameEntities {

    enum SummonerState {
        FREE,
        BUSY,
        EXHAUSTED,
        IN_FIGHT
    }

    struct SummonerMetadata {
        uint id;
        string summonerName;
        address summonedBy;
    }

    struct SummonerData {
        uint level;
        GameObjects.Class class;
        uint EXP;
        SummonerState state;
    }

}
