Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E222CD7C5
	for <lists.bridge@lfdr.de>; Thu,  3 Dec 2020 14:44:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 918FF2E32A;
	Thu,  3 Dec 2020 13:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qsEa4gIt6aun; Thu,  3 Dec 2020 13:43:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 16CDF2E34A;
	Thu,  3 Dec 2020 13:43:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ECB4DC0FA7;
	Thu,  3 Dec 2020 13:43:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3E1E4C0FA7
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 13:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 264F986DFD
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 13:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7dzHW55A5D4 for <bridge@lists.linux-foundation.org>;
 Thu,  3 Dec 2020 13:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ACAB786DF5
 for <bridge@lists.linux-foundation.org>; Thu,  3 Dec 2020 13:43:52 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4Cmxqd0LtBzLxmb;
 Thu,  3 Dec 2020 21:43:09 +0800 (CST)
Received: from [10.174.179.81] (10.174.179.81) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 3 Dec 2020 21:43:38 +0800
To: Nikolay Aleksandrov <nikolay@nvidia.com>, Jakub Kicinski <kuba@kernel.org>
References: <20201201140114.67455-1-wanghai38@huawei.com>
 <20201202170359.19330bda@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <3d3c0206-c8c4-8a19-c821-2a0cbb941c6b@nvidia.com>
From: "wanghai (M)" <wanghai38@huawei.com>
Message-ID: <5147798b-c1cf-ce5f-524c-4874eb854bc0@huawei.com>
Date: Thu, 3 Dec 2020 21:43:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3d3c0206-c8c4-8a19-c821-2a0cbb941c6b@nvidia.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.179.81]
X-CFilter-Loop: Reflected
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, linux-kernel@vger.kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net] net: bridge: Fix a warning when del bridge
	sysfs
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


在 2020/12/3 18:34, Nikolay Aleksandrov 写道:
> On 03/12/2020 03:03, Jakub Kicinski wrote:
>> On Tue, 1 Dec 2020 22:01:14 +0800 Wang Hai wrote:
>>> If adding bridge sysfs fails, br->ifobj will be NULL, there is no
>>> need to delete its non-existent sysfs when deleting the bridge device,
>>> otherwise, it will cause a warning. So, when br->ifobj == NULL,
>>> directly return can fix this bug.
>>>
>>> br_sysfs_addbr: can't create group bridge4/bridge
>>> ------------[ cut here ]------------
>>> sysfs group 'bridge' not found for kobject 'bridge4'
>>> WARNING: CPU: 2 PID: 9004 at fs/sysfs/group.c:279 sysfs_remove_group fs/sysfs/group.c:279 [inline]
>>> WARNING: CPU: 2 PID: 9004 at fs/sysfs/group.c:279 sysfs_remove_group+0x153/0x1b0 fs/sysfs/group.c:270
>>> Modules linked in: iptable_nat
>>> ...
>>> Call Trace:
>>>    br_dev_delete+0x112/0x190 net/bridge/br_if.c:384
>>>    br_dev_newlink net/bridge/br_netlink.c:1381 [inline]
>>>    br_dev_newlink+0xdb/0x100 net/bridge/br_netlink.c:1362
>>>    __rtnl_newlink+0xe11/0x13f0 net/core/rtnetlink.c:3441
>>>    rtnl_newlink+0x64/0xa0 net/core/rtnetlink.c:3500
>>>    rtnetlink_rcv_msg+0x385/0x980 net/core/rtnetlink.c:5562
>>>    netlink_rcv_skb+0x134/0x3d0 net/netlink/af_netlink.c:2494
>>>    netlink_unicast_kernel net/netlink/af_netlink.c:1304 [inline]
>>>    netlink_unicast+0x4a0/0x6a0 net/netlink/af_netlink.c:1330
>>>    netlink_sendmsg+0x793/0xc80 net/netlink/af_netlink.c:1919
>>>    sock_sendmsg_nosec net/socket.c:651 [inline]
>>>    sock_sendmsg+0x139/0x170 net/socket.c:671
>>>    ____sys_sendmsg+0x658/0x7d0 net/socket.c:2353
>>>    ___sys_sendmsg+0xf8/0x170 net/socket.c:2407
>>>    __sys_sendmsg+0xd3/0x190 net/socket.c:2440
>>>    do_syscall_64+0x33/0x40 arch/x86/entry/common.c:46
>>>    entry_SYSCALL_64_after_hwframe+0x44/0xa9
>>>
>>> Reported-by: Hulk Robot <hulkci@huawei.com>
>>> Signed-off-by: Wang Hai <wanghai38@huawei.com>
>> Nik, is this the way you want to handle this?
>>
>> Should the notifier not fail if sysfs files cannot be created?
>> Currently br_sysfs_addbr() returns an int but the only caller
>> ignores it.
>>
> Hi,
> The fix is wrong because this is not the only user of ifobj. The bridge
> port sysfs code also uses it and br_sysfs_addif() will create the new
> symlink in sysfs_root_kn due to NULL kobj passed which basically means
> only one port will be enslaved, the others will fail in creating their
> sysfs entries and thus fail to be added as ports.
>
> I'd prefer to just fail from the notifier based on the return value.
> The only catch would be to test it with br_vlan_bridge_event() which
> is called on bridge master device events, it should be fine as
> br_vlan_find() deals with NULL vlan groups but at least a comment
> above it in br.c's notifier would be good so if anyone decides to add
> any NETDEVICE_UNREGISTER handling would be warned about it.
Thanks for your advice, I will perfect my patch
> Also please add proper fixes tag, the bug seems to be since:
> bb900b27a2f4 ("bridge: allow creating bridge devices with netlink")
>
> It actually changed the behaviour, before that the return value of br_sysfs_addbr()
> was checked and the device got unregistered on failure.
>
> Thanks,
>   Nik
>
>
> .
>
