Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD70606902
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 21:37:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CCD36FB14;
	Thu, 20 Oct 2022 19:37:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CCD36FB14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqeEuZnI8qFk; Thu, 20 Oct 2022 19:37:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 94CEF6FABF;
	Thu, 20 Oct 2022 19:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94CEF6FABF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20465C0078;
	Thu, 20 Oct 2022 19:37:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4026EC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 19:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D31D68436F
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 19:37:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D31D68436F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WBXYi3mzBMS for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 19:37:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 191CF8435A
Received: from mailout-taastrup.gigahost.dk (mailout-taastrup.gigahost.dk
 [46.183.139.199])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 191CF8435A
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 19:37:19 +0000 (UTC)
Received: from mailout.gigahost.dk (mailout.gigahost.dk [89.186.169.112])
 by mailout-taastrup.gigahost.dk (Postfix) with ESMTP id 6A2B11884C9D;
 Thu, 20 Oct 2022 19:37:17 +0000 (UTC)
Received: from smtp.gigahost.dk (smtp.gigahost.dk [89.186.169.109])
 by mailout.gigahost.dk (Postfix) with ESMTP id 4A5F225001FA;
 Thu, 20 Oct 2022 19:37:17 +0000 (UTC)
Received: by smtp.gigahost.dk (Postfix, from userid 1000)
 id 4377E9EC0002; Thu, 20 Oct 2022 19:37:17 +0000 (UTC)
X-Screener-Id: 413d8c6ce5bf6eab4824d0abaab02863e8e3f662
MIME-Version: 1.0
Date: Thu, 20 Oct 2022 21:37:17 +0200
From: netdev@kapio-technology.com
To: Ido Schimmel <idosch@nvidia.com>
In-Reply-To: <Y1FE6WFnsH8hcFY2@shredder>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-2-netdev@kapio-technology.com>
 <Y1FE6WFnsH8hcFY2@shredder>
User-Agent: Gigahost Webmail
Message-ID: <1c71e62ee5d6c0a7fc54d3e666aca619@kapio-technology.com>
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 01/12] net: bridge: add locked
 entry fdb flag to extend locked port feature
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

On 2022-10-20 14:54, Ido Schimmel wrote:
> On Tue, Oct 18, 2022 at 06:56:08PM +0200, Hans J. Schultz wrote:
>> Add an intermediate state for clients behind a locked port to allow 
>> for
>> possible opening of the port for said clients. The clients mac address
>> will be added with the locked flag set, denying access through the 
>> port
> 
> The entry itself is not denying the access through the port, but
> rather the fact that the port is locked and there is no matching FDB
> entry.
> 
>> for the mac address, but also creating a new FDB add event giving
>> userspace daemons the ability to unlock the mac address. This feature
>> corresponds to the Mac-Auth and MAC Authentication Bypass (MAB) named
>> features. The latter defined by Cisco.
> 
> Worth mentioning that the feature is enabled via the 'mab' bridge port
> option (BR_PORT_MAB).
> 
>> 
>> Only the kernel can set this FDB entry flag, while userspace can read
>> the flag and remove it by replacing or deleting the FDB entry.
>> 
>> Locked entries will age out with the set bridge ageing time.
>> 
>> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> 
> Overall looks OK to me. See one comment below.
> 
> Reviewed-by: Ido Schimmel <idosch@nvidia.com>
> 
> [...]
> 
>> @@ -1178,6 +1192,14 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr 
>> *tb[],
>>  		vg = nbp_vlan_group(p);
>>  	}
>> 
>> +	if (tb[NDA_FLAGS_EXT])
>> +		ext_flags = nla_get_u32(tb[NDA_FLAGS_EXT]);
>> +
>> +	if (ext_flags & NTF_EXT_LOCKED) {
>> +		pr_info("bridge: RTM_NEWNEIGH has invalid extended flags\n");
> 
> I understand this function makes use of pr_info(), but it already gets
> extack and it's a matter of time until the pr_info() instances will be
> converted to extack. I would just use extack here like you are doing in
> the next patch.
> 
> Also, I find this message more helpful:
> 
> "Cannot add FDB entry with \"locked\" flag set"
> 

Okay, since Jakub says that this patch set must be resent, the question 
remains
to me if I shall make these changes and resend the patch set as v8?

