Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7C13816BC
	for <lists.bridge@lfdr.de>; Sat, 15 May 2021 10:01:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCDE184325;
	Sat, 15 May 2021 08:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MnNaix5gAXta; Sat, 15 May 2021 08:01:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id F116584320;
	Sat, 15 May 2021 08:01:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A4152C001C;
	Sat, 15 May 2021 08:01:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5F4BC0001
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 10:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2F9F40471
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 10:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qM6MVKiXrJ4L for <bridge@lists.linux-foundation.org>;
 Fri, 14 May 2021 10:07:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FAA940466
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 10:07:07 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id s6so34031123edu.10
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 03:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OPiSE//kuMSOONDnafMlHdljePdCHnoWFaqBwMT6cGQ=;
 b=zYYuXSmmg8yjR5iM5GnLUuWyPNOIID55ff9+p+DAnCuhqrJFBHvIbcQImxQmZ3gDgx
 0Q4LAbeTlALkFSTUGNFaY/5dQw3cE3sSuRbOCZzTRAHuLTEX6d+oAIMYlw5yDYQBDiNc
 eISmQFkhhL48OiP2EN7rD7Xd/pWIKoRjVcpJh3NP0N7aNG8i0oHk9INgvPAQJ24tU2B7
 jXo3gyBXWO/nxz/BjjUIs3i+6CqXaeQEIuRreRgfQSUE1rhLlIC6Bx1lqkoLlc8MDx/e
 CfK9atroOSFYNOPHwvfvj59TU/7bsBNfpGrtILSI5Ech54fIpGgkuWXUSgafr6hxNXyY
 Z67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OPiSE//kuMSOONDnafMlHdljePdCHnoWFaqBwMT6cGQ=;
 b=PSAqrg7cjLoVF/oY16eUz0Vo2jL7+pGORcJNdgpiHzCte8ET2SSI9McgKhtOD0TvSD
 OYzzddk2en5eJZB09ch/NM4eA7FmcRhPT35Flp0UF18IoxxHg+0SFW3yUctPuip94pO5
 WtBwg6TCAVQpMuTRNlVOhF3IyVbiZpXyiMRKRVhNBr5AWBtdLGPzFCG17KWAdvGeg3RQ
 MhdxP0ixqhlC1cFDHlrDHGxjo5v8a6W7akasB7x2pS3vRlOOfEAbbbn2LkDC7KSHo7En
 gmsa2JIo2RztIV22s9pOm5twPUko/i2bPKtam1STllFLXt7mVvYH+jrnaQwqXuwRvAfT
 oNnA==
X-Gm-Message-State: AOAM531h3VMERW9Mzf0WFjsb5WrEvkK7SAOxsZXw+PJdGXlLYkDKK9Ar
 b+rQx38BBxZ821DF2ROCw61ju1AHd86shr49EKVD4A==
X-Google-Smtp-Source: ABdhPJw1mUIMj1g0UwcaeNpYs8KPcNY+G4gxsu/ocrn6455buTVQckcxEtmmUhZj03cggz6JJylgbDm1qNcbBIeSoOQ=
X-Received: by 2002:a50:9346:: with SMTP id n6mr2877297eda.365.1620986825287; 
 Fri, 14 May 2021 03:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <202105140925.xZEBEK7v-lkp@intel.com>
In-Reply-To: <202105140925.xZEBEK7v-lkp@intel.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 14 May 2021 15:36:53 +0530
Message-ID: <CA+G9fYuSVLOOu0aEs1bm5myxDMGe1VK_MVm61BmY3dwDx_yRmA@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sat, 15 May 2021 08:01:31 +0000
Cc: kbuild-all@lists.01.org, Netdev <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org, linux-mips@vger.kernel.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [net-next:master 40/65] net/bridge/br_input.c:135:8:
 error: too many arguments to function 'br_multicast_is_router'
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

[Please ignore this email if you already know these build failures]

+ Adding maintainers

On Fri, 14 May 2021 at 06:35, kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git master
> head:   ea89c862f01e02ec459932c7c3113fa37aedd09a
> commit: 1a3065a26807b4cdd65d3b696ddb18385610f7da [40/65] net: bridge: mcast: prepare is-router function for mcast router split
> config: um-randconfig-s032-20210514 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce:
>         # apt-get install sparse
>         # sparse version: v0.6.3-341-g8af24329-dirty
>         # https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/?id=1a3065a26807b4cdd65d3b696ddb18385610f7da
>         git remote add net-next https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git
>         git fetch --no-tags net-next master
>         git checkout 1a3065a26807b4cdd65d3b696ddb18385610f7da
>         # save the attached .config to linux build tree
>         make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' W=1 ARCH=um
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    net/bridge/br_input.c: In function 'br_handle_frame_finish':
> >> net/bridge/br_input.c:135:8: error: too many arguments to function 'br_multicast_is_router'
>      135 |        br_multicast_is_router(br, skb)) {
>          |        ^~~~~~~~~~~~~~~~~~~~~~
>    In file included from net/bridge/br_input.c:23:
>    net/bridge/br_private.h:1059:20: note: declared here
>     1059 | static inline bool br_multicast_is_router(struct net_bridge *br)
>          |                    ^~~~~~~~~~~~~~~~~~~~~~
>

LKFT build system also noticed these errors on Linux tag 20210514 while
building for mips architecture.

Regressions found on mips:

  - build/gcc-8-rt305x_defconfig
  - build/gcc-9-rt305x_defconfig
  - build/gcc-10-rt305x_defconfig


make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
CROSS_COMPILE=mips-linux-gnu- 'CC=sccache mips-linux-gnu-gcc'
'HOSTCC=sccache gcc'
/builds/linux/net/bridge/br_input.c: In function 'br_handle_frame_finish':
/builds/linux/net/bridge/br_input.c:135:8: error: too many arguments
to function 'br_multicast_is_router'
  135 |        br_multicast_is_router(br, skb)) {
      |        ^~~~~~~~~~~~~~~~~~~~~~
In file included from /builds/linux/net/bridge/br_input.c:23:
/builds/linux/net/bridge/br_private.h:1059:20: note: declared here
 1059 | static inline bool br_multicast_is_router(struct net_bridge *br)
      |                    ^~~~~~~~~~~~~~~~~~~~~~
make[3]: *** [/builds/linux/scripts/Makefile.build:273:
net/bridge/br_input.o] Error 1


> Kconfig warnings: (for reference only)
>    WARNING: unmet direct dependencies detected for LOCKDEP
>    Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
>    Selected by
>    - LOCK_STAT && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
>    - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
>
>
> vim +/br_multicast_is_router +135 net/bridge/br_input.c
>
>     65
>     66  /* note: already called with rcu_read_lock */
>     67  int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
>     68  {
>     69          struct net_bridge_port *p = br_port_get_rcu(skb->dev);
>     70          enum br_pkt_type pkt_type = BR_PKT_UNICAST;
>     71          struct net_bridge_fdb_entry *dst = NULL;
>     72          struct net_bridge_mdb_entry *mdst;
>     73          bool local_rcv, mcast_hit = false;
>     74          struct net_bridge *br;
>     75          u16 vid = 0;
>     76          u8 state;
>     77
>     78          if (!p || p->state == BR_STATE_DISABLED)
>     79                  goto drop;
>     80
>     81          state = p->state;
>     82          if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid,
>     83                                  &state))
>     84                  goto out;
>     85
>     86          nbp_switchdev_frame_mark(p, skb);
>     87
>     88          /* insert into forwarding database after filtering to avoid spoofing */
>     89          br = p->br;
>     90          if (p->flags & BR_LEARNING)
>     91                  br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);
>     92
>     93          local_rcv = !!(br->dev->flags & IFF_PROMISC);
>     94          if (is_multicast_ether_addr(eth_hdr(skb)->h_dest)) {
>     95                  /* by definition the broadcast is also a multicast address */
>     96                  if (is_broadcast_ether_addr(eth_hdr(skb)->h_dest)) {
>     97                          pkt_type = BR_PKT_BROADCAST;
>     98                          local_rcv = true;
>     99                  } else {
>    100                          pkt_type = BR_PKT_MULTICAST;
>    101                          if (br_multicast_rcv(br, p, skb, vid))
>    102                                  goto drop;
>    103                  }
>    104          }
>    105
>    106          if (state == BR_STATE_LEARNING)
>    107                  goto drop;
>    108
>    109          BR_INPUT_SKB_CB(skb)->brdev = br->dev;
>    110          BR_INPUT_SKB_CB(skb)->src_port_isolated = !!(p->flags & BR_ISOLATED);
>    111
>    112          if (IS_ENABLED(CONFIG_INET) &&
>    113              (skb->protocol == htons(ETH_P_ARP) ||
>    114               skb->protocol == htons(ETH_P_RARP))) {
>    115                  br_do_proxy_suppress_arp(skb, br, vid, p);
>    116          } else if (IS_ENABLED(CONFIG_IPV6) &&
>    117                     skb->protocol == htons(ETH_P_IPV6) &&
>    118                     br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
>    119                     pskb_may_pull(skb, sizeof(struct ipv6hdr) +
>    120                                   sizeof(struct nd_msg)) &&
>    121                     ipv6_hdr(skb)->nexthdr == IPPROTO_ICMPV6) {
>    122                          struct nd_msg *msg, _msg;
>    123
>    124                          msg = br_is_nd_neigh_msg(skb, &_msg);
>    125                          if (msg)
>    126                                  br_do_suppress_nd(skb, br, vid, p, msg);
>    127          }
>    128
>    129          switch (pkt_type) {
>    130          case BR_PKT_MULTICAST:
>    131                  mdst = br_mdb_get(br, skb, vid);
>    132                  if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
>    133                      br_multicast_querier_exists(br, eth_hdr(skb), mdst)) {
>    134                          if ((mdst && mdst->host_joined) ||
>  > 135                              br_multicast_is_router(br, skb)) {
>    136                                  local_rcv = true;
>    137                                  br->dev->stats.multicast++;
>    138                          }
>    139                          mcast_hit = true;
>    140                  } else {
>    141                          local_rcv = true;
>    142                          br->dev->stats.multicast++;
>    143                  }
>    144                  break;
>    145          case BR_PKT_UNICAST:
>    146                  dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
>    147                  break;
>    148          default:
>    149                  break;
>    150          }
>    151
>    152          if (dst) {
>    153                  unsigned long now = jiffies;
>    154
>    155                  if (test_bit(BR_FDB_LOCAL, &dst->flags))
>    156                          return br_pass_frame_up(skb);
>    157
>    158                  if (now != dst->used)
>    159                          dst->used = now;
>    160                  br_forward(dst->dst, skb, local_rcv, false);
>    161          } else {
>    162                  if (!mcast_hit)
>    163                          br_flood(br, skb, pkt_type, local_rcv, false);
>    164                  else
>    165                          br_multicast_flood(mdst, skb, local_rcv, false);
>    166          }
>    167
>    168          if (local_rcv)
>    169                  return br_pass_frame_up(skb);
>    170
>    171  out:
>    172          return 0;
>    173  drop:
>    174          kfree_skb(skb);
>    175          goto out;
>    176  }
>    177  EXPORT_SYMBOL_GPL(br_handle_frame_finish);
>    178
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

- Naresh
