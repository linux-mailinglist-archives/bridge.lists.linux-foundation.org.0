Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 71919EE80D
	for <lists.bridge@lfdr.de>; Mon,  4 Nov 2019 20:15:50 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A924AF13;
	Mon,  4 Nov 2019 19:15:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1AECBE6D
	for <bridge@lists.linux-foundation.org>;
	Mon,  4 Nov 2019 19:15:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7FBC87D
	for <bridge@lists.linux-foundation.org>;
	Mon,  4 Nov 2019 19:15:40 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id ECEEF151D3D66;
	Mon,  4 Nov 2019 11:15:39 -0800 (PST)
Date: Mon, 04 Nov 2019 11:15:39 -0800 (PST)
Message-Id: <20191104.111539.1483994068865626222.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191104093651.16754-1-nikolay@cumulusnetworks.com>
References: <20191104093651.16754-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Mon, 04 Nov 2019 11:15:40 -0800 (PST)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next] net: bridge: fdb: eliminate extra
 port state tests from fast-path
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

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Mon,  4 Nov 2019 11:36:51 +0200

> When commit df1c0b8468b3 ("[BRIDGE]: Packets leaking out of
> disabled/blocked ports.") introduced the port state tests in
> br_fdb_update() it was to avoid learning/refreshing from STP BPDUs, it was
> also used to avoid learning/refreshing from user-space with NTF_USE. Those
> two tests are done for every packet entering the bridge if it's learning,
> but for the fast-path we already have them checked in br_handle_frame() and
> is unnecessary to do it again. Thus push the checks to the unlikely cases
> and drop them from br_fdb_update(), the new nbp_state_should_learn() helper
> is used to determine if the port state allows br_fdb_update() to be called.
> The two places which need to do it manually are:
>  - user-space add call with NTF_USE set
>  - link-local packet learning done in __br_handle_local_finish()
> 
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Applied, thank you.
