<template>
  <Header></Header>
  <main class="startPage--about">
    <section>
      <div class="section--content">
        <h1>
          Welcome on <span class="ml-2"> Bizzy !</span>
        </h1>
        <p>Bizzy ? Mais quelle est donc cette application ?</p>
      </div>
      <div class="section--img">
        <img src="../img/img_title.png" alt="img--title"/>
      </div>
    </section>
    <section>
      <div class="section--content">
        <h1>
          Réseau <span class="ml-2">Afterwork !</span>
        </h1>
        <p>
          C’est très facile: c’est une application permettant d’égager vos soirées
          d’afterwork, de les rendre décontractées mais aussi d’agrandir votre réseau
          social/professionnel en se basant sur votre mood : aller manger, faire du
          sport, boire un verre, aller au cinéma etc… !
        </p>
      </div>
      <div class="section--img">
        <img src='../img/img_afterwork.png' alt="img--afterwork"/>
      </div>
    </section>
    <section>
      <div class="section--content">
        <h1>
          Autour de <span class="ml-2">vous !</span>
        </h1>
        <p>
          Trouvez des afterworks autour de vous en utilisant Bizzy! Choissisez une
          proposition dans votre feed de cartes, en fonction du mood. Pour faciliter
          le repérage des lieux, une carte sera aussi à votre disposition.
        </p>
      </div>
      <div class="section--img">
        <img src='../img/img_position.png' alt="img--position"/>
      </div>
    </section>
    <section>
      <div class="section--content">
        <div class="section--content--title">
          <h1>
            Rejoignez
            <img
              src='../img/bizzy.png'
              alt="logo--about--msg"
              class="startPage--about--msg--logo"
            />
            <span> !</span>
          </h1>
        </div>
        <p>
          Et pour faciliter tout cela, il y a un tchat mis à disposition pour convenir
          de tous les détails ! Il est débloqué une fois que la personne qui a crée la
          carte a accepté votre demande. Alors qu’attendez-vous pour commencer vos
          soirées sur Bizzy ?
          <span role="img" aria-label="wink">
            😉
          </span>
        </p>
        <div class="section--btn">
          <button class="btn--connexion">
            <a
              href="http://localhost:3000/connexion"
              class="menu--options--desktop--connexion">
              Connexion
            </a>
          </button>
          <button class="btn--inscription">
            <a
              href="http://localhost:3000/inscription"
              class="menu--options--desktop--connexion">
              Inscription
            </a>
          </button>
        </div>
      </div>
      <div class="section--img">
        <img src='../img/img_msg.png' alt="img--msg">
      </div>
    </section>
  </main>
</template>

<script>
import Header from './Header.vue';

export default {
  name: 'StartPage',
  components: {
    Header,
  },
  props: {
    msg: String,
  },

  created() {
    window.addEventListener('scroll', this.headerStyle);
  },

  methods: {
    headerStyle() {
      if (window.scrollY === 0) {
        document.querySelector('header').removeAttribute('style');
        return;
      }

      if (document.querySelector('header').hasAttribute('style')) {
        return;
      }

      document.querySelector('header').style = 'box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.18); transition: box-shadow .3s cubic-bezier(.35,0,.65,1) 0s';
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
main {
  padding: 0 15px;
  margin: auto;
  font-family: 'Nunito';

  @media (min-width: 576px) {
    max-width: 540px;
  }
  @media (min-width: 768px) {
    max-width: 720px;
  }
  @media (min-width: 992px) {
    max-width: 960px;
  }
  @media (min-width: 1200px) {
    max-width: 1140px;
  }
}
  span {
    color: #283D80;
  }
  h1 {
    font-family: "CeraPro Bold";
  }
  section {
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 100vh;
    .section--img {
      img {
        width: 100%;
        height: auto;
        object-fit: contain;
      }
    }
    .section--btn {
      button {
        border-radius: 10px;
        border: solid 2px #283D80;
        a {
          text-decoration: none;
          padding: 0 10px;
        }
      }
      .btn--connexion {
        background-color: #ffff;
        a {
          color: black;
        }
      }
      .btn--inscription {
        background-color: #283D80;
        a {
          color: #ffff;
        }
      }
    }
  }
  @media only screen and (min-width: 300px) {
    section {
      flex-direction: column-reverse;
      justify-content: center;
      .section--content {
        margin-top: 8%;
        text-align: center;
        .section--content--title {
          display: flex;
          align-items: center;
        }
        h1 {
          font-size: 1.8em;
          display: flex;
        }
        p {
          font-size: 0.8em;
        }
        img {
          width: 27%;
        }
      }
      .section--img {
        width: 80%;
      }
      .section--btn {
        button {
          margin: 0 5px;
          padding: 6px 24px;
        }
      }
    }
  }
  @media only screen and (min-width: 376px) {
    section {
      .section--content {
        img {
          width: 21%;
        }
      }
    }
  }
  @media only screen and (min-width: 454px) {
    section {
      .section--img {
        width: 60%;
      }
      .section--content {
        img {
          width: 18%;
        }
      }
    }
  }
  @media only screen and (min-width: 508px) {
    section {
      .section--img {
        width: 50%;
      }
      .section--content {
        img {
          width: 15%;
        }
      }
    }
  }
  @media only screen and (min-width: 768px) {
    section {
      .section--img {
        width: 40%;
      }
      .section--content {
        img {
          width: 12%;
        }
      }
    }
  }
  @media only screen and (min-width: 996px) {
    section {
      .section--img {
        width: 30%;
      }
      .section--content {
        margin-top: 6%;
      }
    }
  }
  @media only screen and (min-width: 1000px) {
    section {
      flex-direction: row;
      .section--content {
        width: 50%;
        text-align: left;
        h1 {
          font-size: 2.8em;
        }
        p {
          padding-right: 25%;
          font-size: 1em;
        }
        img {
          width: 16%;
        }
      }
      .section--img {
        width: 37%;
      }
      .section--btn {
        margin-top: 5px;
        button {
          margin: 0 5px;
          padding: 10px 40px;
        }
      }
    }
  }

  @media only screen and (min-width: 1440px) {
    section {
      .section--content {
        img {
          width: 28%;
          margin-left: 10px;
          margin-right: 10px;
        }
      }
    }
  }
</style>
