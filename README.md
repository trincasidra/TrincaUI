# TrincaUI
My personal layout for oUF with some extras. It is not very complex, but it has everything that I need.

## Description
  * Minimalist and simple interface using oUF. All dependencies are embedded, so no need to install any extra addon.
  * Most of the code is taken from [ZorkUI](https://www.wowinterface.com/downloads/info24252-ZorkUI.html), and also I took some tricks from oUF_Farva. Overall, my intent was to mimic my own configuration of AfenarUI, but using plain oUF instead of going through ElvUI.
  * This is always work in progress, so functionalities may be missing and/or may never come. Testing comes from my own personal use, so hopefully it's enough.
  * All config is done in the `config.lua` file.
  * Except aura filters, those are on the `filters.lua` file.

## Dragonflight update
Make sure to follow [rRaidManager](https://www.wowinterface.com/downloads/info22236-rRaidManager.html) uninstall instructions if you get "blizzard compactraidframes" errors, and then /reload.

## Worthy additions
With the new revamp to Blizzard's UI and some new modules, I'm now only using the usual suspects:
  * WeakAuras2: Check [my own](https://wago.io/p/Trincasidra%232868) or [Afenar](https://github.com/Afenar/AfenarUI)'s compilations.
  * Bigwigs/Littlewigs
  * Immersion
  * Details
  * OmniCD*
  * My blizz's HUD

<details>
  <summary>Blizz's HUD import (2k)</summary>

  ```
  0 30 0 0 0 7 7 UIParent -227.9 2.0 -1 ##$$%/&&'%)$+$ 0 1 0 7 1 MainMenuBar 1.2 4.0 -1 ##$$%/&&'%(#,$ 0 2 0 7 7 UIParent 226.8 2.0 -1 ##$$%/&&'%(#,$ 0 3 0 7 7 UIParent 768.7 2.0 -1 #$$%%/&&'%(#,$ 0 4 0 7 1 MultiBarBottomRight -0.8 4.0 -1 ##$$%/&&'%(#,$ 0 5 0 5 3 MultiBar7 -4.0 -0.1 -1 #$$%%/&&'%(#,$ 0 6 0 5 3 MultiBarRight -4.0 0.0 -1 #$$%%/&&'%(#,$ 0 7 0 5 3 MultiBar6 -4.0 -0.0 -1 #$$%%/&&'%(#,$ 0 10 0 4 4 UIParent 0.0 -503.0 -1 ##$$&('% 0 11 0 7 1 MultiBarLeft -230.2 4.0 -1 ##$$&('%,# 0 12 0 7 1 MultiBarBottomLeft -147.1 4.0 -1 ##$$&('% 1 -1 0 4 4 UIParent 0.0 -227.3 -1 ##$# 2 -1 0 5 5 UIParent -2.0 -472.0 -1 ##$# 3 0 0 3 3 UIParent 648.7 -165.2 -1 $#3# 3 1 0 5 5 UIParent -648.7 -165.8 -1 %#3# 3 2 0 5 5 UIParent -1253.2 -238.5 -1 %#&#3# 3 3 0 0 0 UIParent 23.9 -302.0 -1 '$(#)#-#.#/#1$3# 3 4 0 0 0 UIParent 20.6 -304.5 -1 ,#-#.#/#0#1#2( 3 5 0 2 2 UIParent -384.2 -170.2 -1 &#*$3# 3 6 0 2 2 UIParent -368.7 -176.2 -1 3# 4 -1 0 4 4 UIParent 0.0 -342.8 -1 # 5 -1 0 4 4 UIParent 0.0 -423.3 -1 # 6 0 0 1 1 UIParent -864.7 -2.0 -1 ##$#%$&.(()(*# 6 1 0 3 3 UIParent 2.0 411.4 -1 ##$#%$'+(()(*# 7 -1 0 3 3 UIParent 2.0 -303.5 -1 # 8 -1 0 3 3 UIParent 34.0 -504.2 -1 #'$A%$&7 9 -1 0 7 1 MultiBarBottomLeft -206.8 4.0 -1 # 10 -1 1 0 0 UIParent 16.0 -116.0 -1 # 11 -1 0 5 5 UIParent -2.0 -262.0 -1 # 12 -1 0 1 1 UIParent 947.2 -2.0 -1 #K
  ```

</details>

<details>
  <summary>Blizz's HUD import (1080p)</summary>

  ```
  0 30 0 0 0 7 7 UIParent -227.9 2.0 -1 ##$$%/&&'%)$+$ 0 1 0 7 1 MainMenuBar 1.2 4.0 -1 ##$$%/&&'%(#,$ 0 2 0 7 7 UIParent 226.8 2.0 -1 ##$$%/&&'%(#,$ 0 3 0 7 7 UIParent 767.9 2.0 -1 #$$%%/&&'%(#,$ 0 4 0 3 5 MultiBarBottomLeft 4.0 0.0 -1 ##$$%/&&'%(#,$ 0 5 0 5 3 MultiBar7 -4.0 -0.1 -1 #$$%%/&&'%(#,$ 0 6 0 7 7 UIParent 689.8 2.0 -1 #$$%%/&&'%(#,$ 0 7 0 7 7 UIParent 612.2 2.0 -1 #$$%%/&&'%(#,$ 0 10 0 4 4 UIParent 0.0 -503.0 -1 ##$$&('% 0 11 0 7 1 MultiBarLeft -230.2 4.0 -1 ##$$&('%,# 0 12 0 7 1 MultiBarBottomLeft -148.8 4.0 -1 ##$$&('% 1 -1 0 4 4 UIParent 0.0 -227.3 -1 ##$# 2 -1 0 5 5 UIParent -2.0 -472.0 -1 ##$# 3 0 0 3 3 UIParent 648.7 -165.2 -1 $#3# 3 1 0 5 5 UIParent -648.7 -165.8 -1 %#3# 3 2 0 5 5 UIParent -1253.2 -238.5 -1 %## 3 3 0 0 0 UIParent 23.9 -302.0 -1 '$(#)#-#.#/#1$3# 3 4 0 0 0 UIParent 20.6 -304.5 -1 ,#-#.#/#0#1#2( 3 5 0 2 2 UIParent -384.2 -170.2 -1 &#*$3# 3 6 0 2 2 UIParent -368.7 -176.2 -1 3# 4 -1 0 4 4 UIParent 0.0 -342.8 -1 # 5 -1 0 4 4 UIParent 0.0 -423.3 -1 # 6 0 0 1 1 UIParent -864.7 -2.0 -1 ##$#%$&.(()(*# 6 1 0 3 3 UIParent 2.0 409.7 -1 ##$#%$'+(()(*# 7 -1 0 3 3 UIParent 2.0 -287.7 -1 # 8 -1 1 6 6 UIParent 35.0 50.0 -1 #'$A%$&7 9 -1 0 7 1 MultiBarBottomLeft -206.8 4.0 -1 # 10 -1 1 0 0 UIParent 16.0 -116.0 -1 # 11 -1 0 5 5 UIParent -2.0 -259.5 -1 # 12 -1 0 1 1 UIParent 947.2 -2.0 -1 #K
  ```

</details>

<details>
  <summary>OmniCD installation instructions</summary>
  
  OmniCD should now work by default with TrincaUI.

  You can then also import my profile:
  ```
  TV1AZTXnY2)q3KAWBGpEPDSVPQ9A7kuP27E)aRIuASfltrQIKYpYV(Tb6gDdYzifLxLSB21vEuuyMbdqJUB0NZbZm1SRMn919R73oFv(NVFZ697Y)y3(57Fy3K5BlTUA(hMn9T)6v)LF(n)eEtZM(tF5(T972955FfU7L)w)S3O7MbTV5(9l3SE6DZxT6j8SkD(zNV(6B38uELkt(XwE9M1LbDTTH3ppWUKoFF(2VEZMv3S5ZRVQ)l7hyrU7UD7M9gtxhEV7H75b4PhCFtE9SPt3SA5nZMUaAH(9E8PE38T7)A5rUUF98Tl38)VzD)0(97xUggE3)P7H)x9wGxW25qNwEfBNV8Mx8s6v8HTBE4(xVDZN)17)88T3an9g7Sf4my1d3TggNUChDZnq3()bMN87B(kWq19JP4SPRM)1npa3ny4x(BGLaCeMU72nF(nZVRh6hz(8xxEZ(BHvzl0dl(Wl2SAdoAMF9(LFQV83L)C2Rc6oxWLCkLY7tb)S3)doyrzXSxzDAL23f70MqkK05ReG5WjVY2tDLIfC1MR)y)nZMqwHx2VF(1323AdaRUmsVE18D7Wb6K8fjJYFlBuYUrR33VD7d3VNSSS9Z3yY8GX82L30NxA(y(np0(Ord4VaRsxnF7h63))s36bdMT9xFB(QSHdmcEJwh668oJrhsPo0WbdTh21)czWFvESIMDCww)R)PSi8bX3Bcgk823VdC00TRp5MpJldUaC6z5e8v162nW(9h2C(FME8h6YcnC381pmF172KTjVPKo)RGFuWR60jBW79MKjpCS2zt)YSxf78ELX6nktiGDTn7HbRwFZpQ5B)rTF7pQtE0UUux03zsHoxZJcTRToBxYaXKXyx9rL8N1xFieH4nR3dVTGrhB6dTxdxZLYVDySHxz)r5GHUWft(i0frtkQJ2G0fwNZP78rTbUUoO4U448nqVe96UuqN0oJ34I22jtiAuW0jODAT2w7fOF2DF)QvLycv0BIHCwBf4c1fZ)YaEKQCiOsf7mLM0ENcUTCBPimWZT50wF5ADot0vEWoD0KVjiPKQlHpOhwdYTfvGPS0cmyIL7cMEk8f6S4fnQOU8QnQuYPl3Fib9B(x2eyukd1uiOlpj41dprz0etrB5IkiUQR8RUi0l4GgM)LF5S4DbpOo5WHFkyt09dRiLHH2dEh4OfEtb8xgVTC1i8SLwmGjlH3FY5SKXamAOniM04mUl4PXwNneW2GXRghLyNPug6vAbJDPhYgwp2)gpeEJJBNhTlQopK9OmNsbQPuigk2fv0H3o4cGpOthWLzLTJmpALnGgBWxZuAZaRdM6B0uSpkJ2fkRxGhsKge5ULmzwvPnlK7P0fGRRP4ey9jDzw7uA89O0MuhzMah2izWadlUizCgAHt78KjWQtgSTGlyrxdn2VQKpOI0WqhjxjBGEGGIw7ZHO0kcypW5uasAqTz6CObsHMoy3uAbeAcNBj8PG45YDAGjloXSOJFEaBltAvNlIE(glmmlxfcbXOitNnHRpAWrNC)YROfBzWwETWWfddTXqh65btymUc2RpNOaFJ55zzyAPilv2vcAbw5mLbkmd6u0Yje(PXyAi7IVoODyGO2Knh53zWIHtGpOUJCQIkfnOHQnWfiWYeW5BYH(vqOjoSbNqi0fFvEAnrtRRjpf)c2gCc1bXduwenebqJgBTnBDMyTK7BoM2sJbWeu(veUFl(MsgkOoqJzDSZsPRcud1aVUucFSqnXc4ceR(rjkUp7(RRVBnUqcznbdu5xzp0QBgARDGpGgFstGCfixlyTIcObxXAKGTdZLvImXbnetGxn7QhQ2oy7UYv9q3rtCNrrrhXe5A3zT1xoUka7o4PvMyKsNRG9CkVky84J4kb0iAHCbQpGu10si4KMI0KcIMiJneQHJ8efAcDHh9A8yAei)RLngoC)cl6Ne9ExzwaPF9u(ujLiKGbTjjWZLIg9w6QjiJhnR1yKOURtfOKcrvh5Ac2rmXLwtb(2eSfvz8zP5ORZySuYjmDnyuXPhKFLsrbPKRMzngaB6IXAc)uDhfRHwMdycCFa3PmNB3rRoWMz4TNIyEkDs5RE7DQAiuKmjLuHLrf(ETbhgra7fr7Ncz(O7fwVknbzos0oMUqj3A0NQ7XbjLrJcuROlHl90maCkXTGGixiVonpTPYcaCjDDt6oRJYS7WC9WCpG5EmoSlmq1huicSI0KRNEbL5A(jdjOqyocQCBwibawqbeRt7RgJqATAwCd5saPXlRD5kTu8ahxotEOkkYU0HRvGXlsn1LQMAL3uUiyHWfnlMngauHJbOuqnUHGcqArlOq2rzFCAAQlRme7ci8XnpKRyBAfkiercOq(u)2DzaktVPFhGeC7899)3vqlfCGxTzZQ9lVp3Reks1p2PLAiNM7Bifh5llRKsAs2(kP0k2gClrOkOaT0CCslyQbRV4QvnJS4RY(Aq8MN2JPMNjAOYqG92IhysLcGAk7H3aJtbjb7CkbyEW(oNncFyPjsHfjVMcmbdvnB9rLoCGNihBH1cSOjqIk2n7Zf9bAh8Aydy8JObJ3EVTg0HHbn7qy4kAT1nEJzmgObTegmPmdWXpxMratkIraOLqxTD1yb2V3KZExUlCNiCyr1ZdXlyQBlTkwlkN2Zn7FvlWN2bVm7l1VugtuQLmOZn7ww5oJjfrDePsZ3NjFz20RE77(l)0RG7mtNw)(Mg28(3dnGmdSyB)8p(UnlZmVDt)77xVlhXujam)m)Yp)6)h(Ha8U)Gs4QcI52V86mtvhrHZ9BxUz7sKYSn7VTFB5LDZYDZ3ExgO609BxU(JWO6nqurZloFP7)098vbVAyM(P(1Zxt)f0hamRYm96Rl3)Y7U7H153vUTCO8lLUtZzlEXlW3v)xG)y98vn3KTbcin(VD5hUDf8Ffgh)WQnFEYdV)9x917rQfh2hlkgi6pMC8Wyr7uCrZiEbXCJq87VvOECv)177Vbwg2cZC8Ewdx4qEjluswEt0y6eetcDXIvqVT4mmP9NdYfFUirK2S4vlxTkBv(tJL4qg(EAK69OCw9CWJtLdMqUkbaWvgwGVt1WIKfk0ckn3LrHz0f2zCNGdMauHnuzjG0iNwTlEuVycMKd(x4EQ9YJYbdu4TXqiri2yOm9d4wP0wLVcMtfH2ezF8XOgPqiYKzneIa774X76ci6O0wLOdMdavLudEtEHEJZZQHahwiQqONObWtzd)jTLYXepiCxGmpuEbvGjn8nGSmuARYYawnF5IcxqvOAfgfkZQkWXbmkSywlcvP6HI5xOlWqldsDcyL05MycNeG9ckachpAADoAa(THEVmDZERLLhQ(zzF9JWEtLwq(BmoBgnnJHUbVCgU)bfB0GPIbR0a2LlQra72qPyPm8f1kZlRry5nCjOczoJb1LllLG6MDEEYqDfEjjms5aZKcdn5kzzMkTO5fX6s(CurvexnujYNhOlH(PmXC1HextixfCtv5cnyc4ae4uPJni9leuxHIacQBUxleBuwbIvIvfmfvOUcdtQuNrDeAxHbnb9VWYhtrqfSlrM4KkzUtWlgQSJu5TI5jHRkNPASHGmghJW6iwxF2uieXXfVJ4WNu5Fn3YiiElu5umpzaVlgfW7b0JsmgjeBJaQltCcVBLSwMCcH9QUQjNW6UyuSUmzgmqnIW7YqiqEmeFV5FDaMBpHXOwUprqFPTkG3go5qLak9SuVpJ4fRq5vqIDlKzZcBadgGGLk04y8WrOPIKCtRWCnNeLBdMkgIdhs3c8LqzrWyA8AzuSmelb2vdVTvdXPGXOpcgZjaMurECZMhGIA)LnFUboJ6sGHOAWHaUdNeiI(IbI0ne1rxlCGcuLdbHCaKLlc7XUSrm)hOj8Kigiubz(oEhyR6XIJ3xHsCmqHJl7QIvyYzWkCy1MNxR4txm6FYKR)KfMFMI5pjaGlxU(VrH2FMhTxoMNN5x8(JoJhhfE)7)5V5zdm4ZVH5SGHBp4qI3ut09PoNodWi(izAoaYvT2JZQ5nxIQqd9ycBl1vj05XkBxlFTr1BzJwgIMiJ6twABUWIHkBxRTuyPNLbNjY9jb2dNSdu1w0kRQa5y4(AL8QIaKpcbnQAxvsLv1UrdKkEiwvBrK1gDT56dhaC8WkkPYUgH74Qy5S4oNruBwSLrXyk1C9VeAAZvREbsAlkkYWYyD0KdFad1rQpRr48HkFlQAZaDRkN0a(xW(YYHZQAZv93cgwWC)CiQnfjCbsA3iOXiIA3aAr0jFGM2IUNma7MZudd1M1jKL0UrHgghoxL7iIAl1clG0BuDKf1MpbkJOpeJn5irTlMTQw48XCrektqHjAAZN2ersBroC64qmqpBrUOrW43Qi8)i6zxXd3IVLcvVejTLJ3IWTxJMwNxt7k5sNxXlHpeg9hR78j10wWJEEnT5J6uls)kcWZPQTRY8dFuE4J8rdkFIzTtlPD75FGojanuhXy8pTQ2Lo5rv1UmvhIXxKeJL1wyz8r01MpSucLSJORTG0NL1wWKFwO(NxwB5OSXYAZCYESU2Yr6RbMVCQ7eDTRNUMHW8b86k14QCpM02IY3NcJ)ZRs2CIPVRK90lsjBzN(ruYUrO3rC8BIYykKf1IhvjBwyCrE5A9ZIA2IJVq6tveB2VNvf)c0YwoEdJWcejXYtwj7hHcir85wgGgQC9a9VhQq(JYA0ZK41hq1tv)6HswFa9qxK(1IQ47)DuwVN(rR(54eEpI0GqPcWGgI9t(CbewCiN7fW31RT2mMgVnJ(toE2Nxt)gn5FeP8hv9)w99PpROpTC3YflxT8WVTOCxM1YNId(09fA3EuX7N8pcngNMAKrj4OL8GVjYoE(v((33pWOlH1ZV)Tg9KjV8sowcF)Bn6Xn2)XDUn(xMe8bpu8AxwUlOE8mtchpsCqXK5Vfj3Sr)(BygifIhLYye6gPsEx0cSGzzuinKPkCec(gJyVsDTLwgCgoohlDc3CctCcxBJWN2PoAgL6qp6tbPuawLSSXOi7CeJXONhJoShL0lSS3fJYsL8vvW0o9KjwAmgLg9BHOYrKW1dtZO85fyRIelhGIwUsWrtLIeH6dMWhH)IXiIOHAveCYIZqSWy0ju5jye89Jd6EiA6kY5Xph4NcM8IkgHfN80CVOf1lZ)iPkaQfq(LXkauqyuE8kx)nNVkMO(b8ZVqOLNjaK5zN5uFmM0haVS09mx68jNQ5lpIPAt(iUe48m)fTN1PHF4BcAY2J9ubnj1gX)lZlZakMfkqyYMfCLnh4j9rhYjHtgHQjHdxH7gMt5HFErm3pc7bx0rwQ5Z(ro8sYN4tLcl(R3P5RHKP3to6fN9t2HH4km8YmQ2(zQu)shfc7yoof(dgJJtIVKYtu54KziuO4KyxvuXs0gczXOC3rCxLJP3u(GRA(wfluSugafUpw0Y9rLysrBQg6ulCGuAQ5dvIK3q0zqKiR5lMQQGtdFZeta05pSYintTjlHetSjROdXPsPxgYSPOhIqeplmvZhSdlHrvLjHk0dpbtD0mOQlflHHWVP8PaY8fkmZoGEtr)jr1jrkgwklrkgMDtMhvHCtKMOspu5hxKwHfSG1jJz28GdSfjdNWnNqIRihqlf7NHBtiA84VyhHjEH2)bhJPYIVMYvvfcTHDtKQNdz3CmYlhJKZdyb97SBgRVXVZU5)wXU5t470zuAnVy2r)dJDZ)J6tZPE8xW)z2BVB9Yx8Y5Rw9FDfyGUE(V(Z)9d
  ```
  
</details>

## Other notes
Special thanks to Zork, scrable and Afenar for the inspiration and code that I based this on.
Also definitely feel free to give feedback, propose changes, or fork to your own project.

![trincaui](./preview.jpg)
