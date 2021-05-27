<template>
  <header>
    <div class="mobile--logo">
      <img src='../img/bizzy.png' alt="logo" class="logo--app"/>
    </div>
    <div class="mobile--menu">
      <img
        src='../img/menu_burger.svg'
        alt="burger--icon"
        class="menu--burger"
        @click="displayMenu"
      />
      <div class="menu--options" v-if="showMenu">
        <p>Connexion</p>
        <p>Inscription</p>
        <p>Support</p>
      </div>
    </div>
    <div class="desktop--menu">
      <a
        href="http://localhost:3000/support"
        class="menu--options--desktop--support"
      >
      Support
    </a>
      <a
        href="http://localhost:3000/connexion"
        class="menu--options--desktop--connexion">
        Connexion
      </a>
      <a
        href="http://localhost:3000/inscription"
        class="menu--options--desktop--inscription"
      >
        Inscription
      </a>
    </div>
  </header>
</template>

<script>
export default {
  name: 'Header',

  data() {
    return {
      showMenu: false,
    };
  },

  methods: {
    displayMenu() {
      this.showMenu = !this.showMenu;
    },
  },
};
</script>

<style lang="scss" scoped>
header {
  background-color: #ffff;
  position: fixed;
  font-family: "Nunito";
  height: 14%;
  top: 0;

  .desktop--menu {
    a {
      text-decoration: none;
      color: black;
      padding: 0 10px;
    }
  }
}

  @media only screen and (min-width: 300px) {
    header {
      width: 100%;
      padding: 10px 5px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    .mobile--logo {
      width: 28%;
      margin-left: 8px;
      img {
        width: 100%;
        height: auto;
        object-fit: contain;
      }
    }
    .mobile--menu {
      display: block;
      position: relative;
      font-family: "Nunito";
      margin-right: 14px;
      .menu--burger {
        height: 41%;
      }
      .menu--options {
        position: absolute;
        right: 0;
        top: 28px;
        background-color: #ffff;
        border-radius: 10px;
        width: 40vw;
        text-align: center;
        padding-top: 16px;
        padding-left: 22px;
        line-height: 0.6;
        height: 13vh;
      }
    }

    .desktop--menu {
      display: none;
    }
  }

  @media only screen and (min-width: 406px) {
    .mobile--menu {
      .menu--options {
        display: flex;
        align-items: flex-end;
        flex-direction: column;
        width: 30vw;
        padding-top: 16px;
        padding-right: 12px;
      }
    }
  }

  @media only screen and (min-width: 482px) {
    .mobile--logo {
      width: 18%;
    }
    .mobile--menu {
      .menu--options {
        width: 25vw;
      }
    }
  }

  @media only screen and (min-width: 584px) {
    .mobile--logo {
      width: 15%;
    }
    .mobile--menu {
      .menu--options {
        width: 21vw;
      }
    }
  }

  @media only screen and (min-width: 682px) {
    .mobile--logo {
      width: 12%;
    }
    .mobile--menu {
      .menu--options {
        width: 18vw;
      }
    }
  }

  @media only screen and (min-width: 774px) {
    .mobile--logo {
      width: 10%;
    }
    .mobile--menu {
      .menu--options {
        width: 16vw;
      }
    }
  }

  @media only screen and (min-width: 888px) {
    .mobile--menu {
      .menu--options {
        width: 14vw;
      }
    }
  }

  @media only screen and (min-width: 1000px) {
    header {
      width: 100%;
    }

    .mobile--logo {
      width: 10%;
      margin-left: 8px;
      img {
        width: 100%;
        height: auto;
        object-fit: contain;
      }
    }

    .desktop--menu {
      display: flex;
      font-family: "Nunito";
      margin-right: 5%;
      p {
        padding-right: 10%;
        margin: 0;
      }
    }

    .mobile--menu {
      display: none;
    }
  }

  @media only screen and (min-width: 1000px) {
    .mobile--logo {
      width: 8%;
    }
  }

  @media only screen and (min-width: 1400px) {
    .mobile--logo {
      width: 6%;
    }
  }
</style>
