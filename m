Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A684B75DC5C
	for <lists.bridge@lfdr.de>; Sat, 22 Jul 2023 14:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 060C760DED;
	Sat, 22 Jul 2023 12:06:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 060C760DED
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (4096-bit key) header.d=quietfountain.com header.i=@quietfountain.com header.a=rsa-sha256 header.s=dkim header.b=hE7jq7w8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nprZQYEin1cR; Sat, 22 Jul 2023 12:06:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 82EE260E7A;
	Sat, 22 Jul 2023 12:06:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82EE260E7A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AFC56C008D;
	Sat, 22 Jul 2023 12:06:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D1FC8C0032
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 13:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EFC883CDF
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 13:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EFC883CDF
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (4096-bit key) header.d=quietfountain.com
 header.i=@quietfountain.com header.a=rsa-sha256 header.s=dkim
 header.b=hE7jq7w8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qUiiSgS7t7m for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 13:58:24 +0000 (UTC)
X-Greylist: delayed 00:07:08 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB24B83CDB
Received: from mail2-1.quietfountain.com (mail2-1.quietfountain.com
 [64.111.48.224])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB24B83CDB
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 13:58:23 +0000 (UTC)
Received: from mail2-1.quietfountain.com (localhost [127.0.0.1])
 by mail2-1.quietfountain.com (Postfix) with ESMTP id 4R1wxS5Xw7zshQk
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 08:51:08 -0500 (CDT)
Authentication-Results: mail2-1.quietfountain.com (amavisd-new);
 dkim=pass (4096-bit key) reason="pass (just generated, assumed good)"
 header.d=quietfountain.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 quietfountain.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1689256256; x=1691848257; bh=t3KoUQ576nwgQDgQyh6XtUiiZCI2C4INCDa
 FAm36//8=; b=hE7jq7w8Eu2/m+JHQN56PpyfwdyTFGg5g/5SgHjxCUx/ge3V3wy
 cgNchZrfHrZoAHcQg/Q2aNq115c9fFvJw6/sudEDkoDMb3Ri/WlDo71ck4D72OoX
 gAcN537Cq+D194GtY2kqJliJfd/yfI8aHqiJY0x7SmH9SNY2gLyEIXo5cxsE/7KR
 WkkZzEWWdQ0JX0fBeTDJ2+X8srcS17GdAnlbtjk24DMNAtn4yrBvJgPzKHv0zJX0
 YS9BJpXFoW5YQ7rgXEyo5vwdxAEbo/otmLnSkYS40/G9CWQS7UTw2XrYS8FeJLKo
 JmNP5HOmezY9mPs+YVF1uxtx/kV3ESoikHNQr4/cq1cfQQz/4eexYBrtRVJnuwO7
 7aJRnruuTL5JRLe1LqnR0dMsnL3Oja+v0mIFblY4ifoBTuudId0BXxVfz+Ik7obs
 q9t3c6bE2BJT+mx0GIwGu31yaZUej8176Ir7ptD+j9tqQmmSFC1+N+emor0JJFlX
 yO3bDiOERgWvioF+NKcvQOiXByFOEN3fQ5bAEcM7Pjflg1FdsaVS7l6Rn4gbLMpA
 NAqcju3KWUHO93Nnyhbxr4TCk+yl3jooEktPjSDLFaqPfZ2SBqWX4O/nD9bSu+ce
 SVoQI8nMWERcbG1rzE1Mq0dVdRi5OY28fdOvPpYZOz2tfdFFp+k32KgI=
X-Virus-Scanned: Debian amavisd-new at email2.1.quietfountain.com
Received: from mail2-1.quietfountain.com ([127.0.0.1])
 by mail2-1.quietfountain.com (mail2-1.quietfountain.com [127.0.0.1])
 (amavisd-new, port 10026)
 with ESMTP id Wz7w6g2ljSin for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 08:50:56 -0500 (CDT)
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from [10.12.114.193] (unknown [10.12.114.193])
 by mail2-1.quietfountain.com (Postfix) with ESMTPSA id 4R1wxC6C8lzsfvj;
 Thu, 13 Jul 2023 08:50:55 -0500 (CDT)
Message-ID: <f4f1b9b4-abc9-842a-205a-35588916115d@quietfountain.com>
Date: Thu, 13 Jul 2023 08:50:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>,
 Ido Schimmel <idosch@idosch.org>, Kuniyuki Iwashima <kuniyu@amazon.com>
References: <20230711235415.92166-1-kuniyu@amazon.com>
 <ZK69NDM60+N0TTFh@shredder>
 <caf5bc87-0b5f-cd44-3c1c-5842549c8c6e@blackwall.org>
Organization: Quiet Fountain LLC / Rock Stable Systems
In-Reply-To: <caf5bc87-0b5f-cd44-3c1c-5842549c8c6e@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sat, 22 Jul 2023 12:06:29 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kuniyuki Iwashima <kuni1840@gmail.com>, Eric Dumazet <edumazet@google.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v1 net] bridge: Return an error when enabling
 STP in netns.
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
From: Harry Coin via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Harry Coin <hcoin@quietfountain.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


On 7/12/23 09:52, Nikolay Aleksandrov wrote:
> On 12/07/2023 17:48, Ido Schimmel wrote:
>> On Tue, Jul 11, 2023 at 04:54:15PM -0700, Kuniyuki Iwashima wrote:
>>> When we create an L2 loop on a bridge in netns, we will see packets s=
torm
>>> even if STP is enabled.
>>>
>>>    # unshare -n
>>>    # ip link add br0 type bridge
>>>    # ip link add veth0 type veth peer name veth1
>>>    # ip link set veth0 master br0 up
>>>    # ip link set veth1 master br0 up
>>>    # ip link set br0 type bridge stp_state 1
>>>    # ip link set br0 up
>>>    # sleep 30
>>>    # ip -s link show br0
>>>    2: br0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue s=
tate UP mode DEFAULT group default qlen 1000
>>>        link/ether b6:61:98:1c:1c:b5 brd ff:ff:ff:ff:ff:ff
>>>        RX: bytes  packets  errors  dropped missed  mcast
>>>        956553768  12861249 0       0       0       12861249  <-. Keep
>>>        TX: bytes  packets  errors  dropped carrier collsns     |  inc=
reasing
>>>        1027834    11951    0       0       0       0         <-'   ra=
pidly
>>>
>>> This is because llc_rcv() drops all packets in non-root netns and BPD=
U
>>> is dropped.
>>>
>>> Let's show an error when enabling STP in netns.
>>>
>>>    # unshare -n
>>>    # ip link add br0 type bridge
>>>    # ip link set br0 type bridge stp_state 1
>>>    Error: bridge: STP can't be enabled in non-root netns.
>>>
>>> Note this commit will be reverted later when we namespacify the whole=
 LLC
>>> infra.
>>>
>>> Fixes: e730c15519d0 ("[NET]: Make packet reception network namespace =
safe")
>>> Suggested-by: Harry Coin <hcoin@quietfountain.com>
>> I'm not sure that's accurate. I read his response in the link below an=
d
>> he says "I'd rather be warned than blocked" and "But better warned and
>> awaiting a fix than blocked", which I agree with. The patch has the
>> potential to cause a lot of regressions, but without actually fixing t=
he
>> problem.
>>
>> How about simply removing the error [1]? Since iproute2 commit
>> 844c37b42373 ("libnetlink: Handle extack messages for non-error case")=
,
>> it can print extack warnings and not only errors. With the diff below:
>>
>>   # unshare -n
>>   # ip link add name br0 type bridge
>>   # ip link set dev br0 type bridge stp_state 1
>>   Warning: bridge: STP can't be enabled in non-root netns.
>>   # echo $?
>>   0
>>
>> [1]
>> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
>> index a807996ac56b..b5143de37938 100644
>> --- a/net/bridge/br_stp_if.c
>> +++ b/net/bridge/br_stp_if.c
>> @@ -201,10 +201,8 @@ int br_stp_set_enabled(struct net_bridge *br, uns=
igned long val,
>>   {
>>          ASSERT_RTNL();
>>  =20
>> -       if (!net_eq(dev_net(br->dev), &init_net)) {
>> +       if (!net_eq(dev_net(br->dev), &init_net))
>>                  NL_SET_ERR_MSG_MOD(extack, "STP can't be enabled in n=
on-root netns");
>> -               return -EINVAL;
>> -       }
>>  =20
>>          if (br_mrp_enabled(br)) {
>>                  NL_SET_ERR_MSG_MOD(extack,
>>
> I'd prefer this approach to changing user-visible behaviour and potenti=
al regressions.
> Just change the warning message.
>
> Thanks,
>   Nik

Remember, the only way it's honest to 'warn but not block' STP in netns=20
is trust in the Kuniyuki's assertion that the llc will be=20
'namespacified' in a near term frame.=C2=A0=C2=A0 As STP is not only=20
non-functional in a netns, but will in fact bring down every connected=20
system in a packet storm should a L2 loop exist the situation is much=20
worse than a merely inaccessible extra feature. This as the only reason=20
STP exists is to avoid crashing sites owing to packet storms arising=20
from L2 loops.=C2=A0=C2=A0=C2=A0 I think as this bug is a potential 'site=
 killer'=20
(which in fact happened to me!) The Linux dev community has an=20
obligation to either hard block this or commit to a fix time frame and=20
merely warn.

Thanks

Harry Coin


