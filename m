Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAA35F0445
	for <lists.bridge@lfdr.de>; Fri, 30 Sep 2022 07:42:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2B6261237;
	Fri, 30 Sep 2022 05:42:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2B6261237
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mh1XvZOov218; Fri, 30 Sep 2022 05:42:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4399B6123B;
	Fri, 30 Sep 2022 05:42:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4399B6123B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D75F7C007C;
	Fri, 30 Sep 2022 05:42:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 13B0CC002D
 for <bridge@lists.linux-foundation.org>; Fri, 30 Sep 2022 05:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBF6241D54
 for <bridge@lists.linux-foundation.org>; Fri, 30 Sep 2022 05:42:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBF6241D54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9tUZ8Vc3H1B for <bridge@lists.linux-foundation.org>;
 Fri, 30 Sep 2022 05:42:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BC9C41D4B
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BC9C41D4B
 for <bridge@lists.linux-foundation.org>; Fri, 30 Sep 2022 05:42:41 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id D4E701884C74;
 Fri, 30 Sep 2022 05:42:37 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id CC22E2500370;
 Fri, 30 Sep 2022 05:42:37 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id BB3929EC0010; Fri, 30 Sep 2022 05:42:37 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Fri, 30 Sep 2022 07:42:37 +0200
From: netdev@kapio-technology.com
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20220929112744.27cc969b@kernel.org>
References: <20220928150256.115248-1-netdev@kapio-technology.com>
 <20220929091036.3812327f@kernel.org>
 <12587604af1ed79be4d3a1607987483a@kapio-technology.com>
 <20220929112744.27cc969b@kernel.org>
User-Agent: Gigahost Webmail
Message-ID: <ab488e3d1b9d456ae96cfd84b724d939@kapio-technology.com>
X-Sender: netdev@kapio-technology.com
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v6 net-next 0/9] Extend locked port feature
 with FDB locked flag (MAC-Auth/MAB)
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

On 2022-09-29 20:27, Jakub Kicinski wrote:
> On Thu, 29 Sep 2022 18:37:09 +0200 netdev@kapio-technology.com wrote:
>> On 2022-09-29 18:10, Jakub Kicinski wrote:
>> > On Wed, 28 Sep 2022 17:02:47 +0200 Hans Schultz wrote:
>> >> From: "Hans J. Schultz" <netdev@kapio-technology.com>
>> >>
>> >> This patch set extends the locked port feature for devices
>> >> that are behind a locked port, but do not have the ability to
>> >> authorize themselves as a supplicant using IEEE 802.1X.
>> >> Such devices can be printers, meters or anything related to
>> >> fixed installations. Instead of 802.1X authorization, devices
>> >> can get access based on their MAC addresses being whitelisted.
>> >
>> > Try a allmodconfig build on latest net-next, seems broken.

Obviously my method of selecting all switchcore drivers with sub-options 
under menuconfig was not sufficient, and I didn't know of the 
allmodconfig option, otherwise I would have used it.

So the question is if I should repost the fixed patch-set or I need to 
make a new version?

Anyhow I hope that there will not be problems when running the 
selftests, as I have not been able to do so with my system, so there can 
be more that needs to be changed.

If anyone needs it, here is the compile fix patch:

diff --git a/drivers/net/dsa/qca/qca8k-common.c 
b/drivers/net/dsa/qca/qca8k-common.c
index 0c5f49de6729..e26a9a483955 100644
--- a/drivers/net/dsa/qca/qca8k-common.c
+++ b/drivers/net/dsa/qca/qca8k-common.c
@@ -809,7 +809,7 @@ int qca8k_port_fdb_add(struct dsa_switch *ds, int 
port,

  int qca8k_port_fdb_del(struct dsa_switch *ds, int port,
  		       const unsigned char *addr, u16 vid,
-		       struct dsa_db db)
+		       u16 fdb_flags, struct dsa_db db)
  {
  	struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
  	u16 port_mask = BIT(port);
diff --git a/drivers/net/dsa/sja1105/sja1105_main.c 
b/drivers/net/dsa/sja1105/sja1105_main.c
index 1f12a5b89c91..526177813d53 100644
--- a/drivers/net/dsa/sja1105/sja1105_main.c
+++ b/drivers/net/dsa/sja1105/sja1105_main.c
@@ -1938,7 +1938,7 @@ static void sja1105_fast_age(struct dsa_switch 
*ds, int port)

  		u64_to_ether_addr(l2_lookup.macaddr, macaddr);

-		rc = sja1105_fdb_del(ds, port, macaddr, l2_lookup.vlanid, db);
+		rc = sja1105_fdb_del(ds, port, macaddr, l2_lookup.vlanid, 0, db);
  		if (rc) {
  			dev_err(ds->dev,
  				"Failed to delete FDB entry %pM vid %lld: %pe\n",
@@ -1952,14 +1952,14 @@ static int sja1105_mdb_add(struct dsa_switch 
*ds, int port,
  			   const struct switchdev_obj_port_mdb *mdb,
  			   struct dsa_db db)
  {
-	return sja1105_fdb_add(ds, port, mdb->addr, mdb->vid, false, db);
+	return sja1105_fdb_add(ds, port, mdb->addr, mdb->vid, 0, db);
  }

  static int sja1105_mdb_del(struct dsa_switch *ds, int port,
  			   const struct switchdev_obj_port_mdb *mdb,
  			   struct dsa_db db)
  {
-	return sja1105_fdb_del(ds, port, mdb->addr, mdb->vid, db);
+	return sja1105_fdb_del(ds, port, mdb->addr, mdb->vid, 0, db);
  }

  /* Common function for unicast and broadcast flood configuration.
