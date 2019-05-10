Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 439E51A50E
	for <lists.bridge@lfdr.de>; Sat, 11 May 2019 00:06:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DB558F39;
	Fri, 10 May 2019 22:06:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B99FFF1E
	for <bridge@lists.linux-foundation.org>;
	Fri, 10 May 2019 22:06:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3CC21FB
	for <bridge@lists.linux-foundation.org>;
	Fri, 10 May 2019 22:06:25 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id B4E8B133E975E;
	Fri, 10 May 2019 15:06:24 -0700 (PDT)
Date: Fri, 10 May 2019 15:06:22 -0700 (PDT)
Message-Id: <20190510.150622.135840136910324302.davem@davemloft.net>
To: tobin@kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190510025212.10109-1-tobin@kernel.org>
References: <20190510025212.10109-1-tobin@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Fri, 10 May 2019 15:06:25 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: nikolay@cumulusnetworks.com, gregkh@linuxfoundation.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, tyhicks@canonical.com, netdev@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2] bridge: Fix error path for
	kobject_init_and_add()
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

From: "Tobin C. Harding" <tobin@kernel.org>
Date: Fri, 10 May 2019 12:52:12 +1000

> Currently error return from kobject_init_and_add() is not followed by a
> call to kobject_put().  This means there is a memory leak.  We currently
> set p to NULL so that kfree() may be called on it as a noop, the code is
> arguably clearer if we move the kfree() up closer to where it is
> called (instead of after goto jump).
> 
> Remove a goto label 'err1' and jump to call to kobject_put() in error
> return from kobject_init_and_add() fixing the memory leak.  Re-name goto
> label 'put_back' to 'err1' now that we don't use err1, following current
> nomenclature (err1, err2 ...).  Move call to kfree out of the error
> code at bottom of function up to closer to where memory was allocated.
> Add comment to clarify call to kfree().
> 
> Signed-off-by: Tobin C. Harding <tobin@kernel.org>
> ---
> 
> v1 was a part of a set.  I have dropped the other patch until I can work
> out a correct solution.

Applied and queued up for -stable, thanks.
