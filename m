Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 184DB67DAA
	for <lists.bridge@lfdr.de>; Sun, 14 Jul 2019 08:04:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 644214F38;
	Sun, 14 Jul 2019 06:04:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 817AB1682
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 20:45:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E05670D
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 20:45:16 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 90F57FB6C0
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 22:45:15 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 826ABDA704
	for <bridge@lists.linux-foundation.org>;
	Fri,  5 Jul 2019 22:45:15 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 780C7351A; Fri,  5 Jul 2019 22:45:15 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 81DCDDA704;
	Fri,  5 Jul 2019 22:45:13 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Fri, 05 Jul 2019 22:45:13 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 5570F4265A2F;
	Fri,  5 Jul 2019 22:45:13 +0200 (CEST)
Date: Fri, 5 Jul 2019 22:45:12 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: wenxu@ucloud.cn
Message-ID: <20190705204512.uvzvpgu2ny7lqi75@salvia>
References: <1562332598-17415-1-git-send-email-wenxu@ucloud.cn>
	<1562332598-17415-3-git-send-email-wenxu@ucloud.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1562332598-17415-3-git-send-email-wenxu@ucloud.cn>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: nikolay@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH 3/7 nf-next v2] bridge: add
	br_vlan_get_pvid_rcu()
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Fri, Jul 05, 2019 at 09:16:34PM +0800, wenxu@ucloud.cn wrote:
> From: Pablo Neira Ayuso <pablo@netfilter.org>
> 
> This new function allows you to fetch bridge pvid from packet path.

Applied, thanks.
