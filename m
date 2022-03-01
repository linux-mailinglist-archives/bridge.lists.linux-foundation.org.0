Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E384CF3BD
	for <lists.bridge@lfdr.de>; Mon,  7 Mar 2022 09:37:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F0C781985;
	Mon,  7 Mar 2022 08:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aZJr3-qcXsf2; Mon,  7 Mar 2022 08:37:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 700DA818A7;
	Mon,  7 Mar 2022 08:37:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 34EACC0070;
	Mon,  7 Mar 2022 08:37:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9ED9EC000B
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 22:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89BC440383
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 22:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yAqryJzlnGiQ for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 22:38:34 +0000 (UTC)
X-Greylist: delayed 00:07:42 by SQLgrey-1.8.0
Received: from fox.pavlix.cz (fox.pavlix.cz [IPv6:2a01:430:17:1::ffff:1417])
 by smtp2.osuosl.org (Postfix) with ESMTP id E89F1400A4
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 22:38:33 +0000 (UTC)
Received: from [172.16.63.206] (37-48-0-234.nat.epc.tmcz.cz [37.48.0.234])
 by fox.pavlix.cz (Postfix) with ESMTPSA id 8219111111E;
 Tue,  1 Mar 2022 23:30:47 +0100 (CET)
Message-ID: <f7fc9c30-0514-0bfb-ee98-f3944d752d7f@simerda.eu>
Date: Tue, 1 Mar 2022 23:30:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>,
 Vladimir Oltean <olteanv@gmail.com>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301162142.2rv23g4cyd2yacbs@skbuf> <87fso1nzdt.fsf@waldekranz.com>
From: =?UTF-8?Q?Pavel_=c5=a0imerda?= <code@simerda.eu>
In-Reply-To: <87fso1nzdt.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 07 Mar 2022 08:37:25 +0000
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 navolnenoze@simerda.eu, Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 00/10] net: bridge: Multiple
	Spanning Trees
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



On 01/03/2022 22:20, Tobias Waldekranz wrote:
> On Tue, Mar 01, 2022 at 18:21, Vladimir Oltean <olteanv@gmail.com> wrote:
>> Hi Tobias,
>>
>> On Tue, Mar 01, 2022 at 11:03:11AM +0100, Tobias Waldekranz wrote:
>>> A proposal for the corresponding iproute2 interface is available here:
>>>
>>> https://github.com/wkz/iproute2/tree/mst
>>
>> Please pardon my ignorance. Is there a user-mode STP protocol application
>> that supports MSTP, and that you've tested these patches with?
>> I'd like to give it a try.
> 
> I see that Stephen has already pointed you to mstpd in a sibling
> message.
> 
> It is important to note though, that AFAIK mstpd does not actually
> support MSTP on a vanilla Linux system. The protocol implementation is
> in place, and they have a plugin architecture that makes it easy for people
> to hook it up to various userspace SDKs and whatnot, but you can't use
> it with a regular bridge.
> 
> A colleague of mine has been successfully running a modified version of
> mstpd which was tailored for v1 of this series (RFC). But I do not
> believe he has had the time to rework it for v2. That should mostly be a
> matter of removing code though, as v2 allows you to manage the MSTIs
> directly, rather than having to translate it to an associated VLAN.

Hello,

we experimented with mstpd with pretty reasonable kernel modifications. Vanilla kernel wasn't capable of transferring the correct mapping from mstpd to the hardware due to lack of vlan2msti mapping and per-msti port state (rather than just per-vlan port state).

https://github.com/mstpd/mstpd/pull/112

I didn't pursue this for a while, though.

Regards,
Pavel
